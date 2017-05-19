
return function(super)
    if super then
        assert(super.__index == super, '创建类失败，请确保super.__index = super')
    end
    local class_type = {}
    class_type.ctor = false
    class_type.super = super
    class_type.__index = class_type

    class_type.New = function(cshare_obj)
        local obj = {}
        tolua.setpeer(cshare_obj, obj)
        do
            local create
            create = function(c, cshare_obj)
                if c.super then
                    create(c.super, cshare_obj)
                end
                if c.ctor then
                    c.ctor(obj, cshare_obj)
                end
            end
            create(class_type, cshare_obj)
        end
        setmetatable(obj, class_type)
        return obj
    end

    if super then setmetatable(class_type, super) end
    return class_type
end