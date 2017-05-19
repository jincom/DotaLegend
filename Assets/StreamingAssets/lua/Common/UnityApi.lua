Debugger = {} 
--*
--[Comment]
--overrides:
--*
--Void Log(String str)
--*
--Void Log(Object message)
--*
--Void Log(String str,Object arg0)
--*
--Void Log(String str,Object arg0,Object arg1)
--*
--Void Log(String str,Object arg0,Object arg1,Object arg2)
--*
--Void Log(String str,Object[] param)
--*
--static method,use '.'
function Debugger.Log() end 

--[Comment]
--overrides:
--*
--Void LogWarning(String str)
--*
--Void LogWarning(Object message)
--*
--Void LogWarning(String str,Object arg0)
--*
--Void LogWarning(String str,Object arg0,Object arg1)
--*
--Void LogWarning(String str,Object arg0,Object arg1,Object arg2)
--*
--Void LogWarning(String str,Object[] param)
--*
--static method,use '.'
function Debugger.LogWarning() end 

--[Comment]
--overrides:
--*
--Void LogError(String str)
--*
--Void LogError(Object message)
--*
--Void LogError(String str,Object arg0)
--*
--Void LogError(String str,Object arg0,Object arg1)
--*
--Void LogError(String str,Object arg0,Object arg1,Object arg2)
--*
--Void LogError(String str,Object[] param)
--*
--static method,use '.'
function Debugger.LogError() end 

--[Comment]
--overrides:
--*
--Void LogException(Exception e)
--*
--Void LogException(String str,Exception e)
--*
--static method,use '.'
function Debugger.LogException() end 

DOTween = {} 
--*
--[Comment]
--consturctor for DOTween overrides:
--*
--DOTween.New()
--*

function DOTween.New() end
--*
--[Comment]
-- property: LogBehaviour DOTween.logBehaviour	get	set	
--Default: LogBehaviour.ErrorsOnly
DOTween.logBehaviour = nil 
--*
--[Comment]
--overrides:
--*
--IDOTweenInit Init(Nullable`1 recycleAllByDefault,Nullable`1 useSafeMode,Nullable`1 logBehaviour)
--*
--static method,use '.'
function DOTween.Init() end 

--[Comment]
--overrides:
--*
--Void SetTweensCapacity(Int32 tweenersCapacity,Int32 sequencesCapacity)
--
--params:
--tweenersCapacity:    Max Tweeners capacity.              Default: 200
--sequencesCapacity:    Max Sequences capacity.              Default: 50

--*
--static method,use '.'
function DOTween.SetTweensCapacity() end 

--[Comment]
--overrides:
--*
--Void Clear(Boolean destroy)
--
--params:
--destroy:    If TRUE also destroys DOTween's gameObject and resets its initializiation, default settings and everything else              (so that next time you use it it will need to be re-initialized)

--*
--static method,use '.'
function DOTween.Clear() end 

--[Comment]
--overrides:
--*
--Void ClearCachedTweens()
--*
--static method,use '.'
function DOTween.ClearCachedTweens() end 

--[Comment]
--overrides:
--*
--Int32 Validate()
--Automatically called when loading a new scene if  is TRUE.
--*
--static method,use '.'
function DOTween.Validate() end 

--[Comment]
--overrides:
--*
--TweenerCore`3 To(DOGetter`1 getter,DOSetter`1 setter,Single endValue,Single duration)
--*
--Tweener To(DOGetter`1 getter,DOSetter`1 setter,Int32 endValue,Single duration)
--*
--Tweener To(DOGetter`1 getter,DOSetter`1 setter,UInt32 endValue,Single duration)
--*
--Tweener To(DOGetter`1 getter,DOSetter`1 setter,Int64 endValue,Single duration)
--*
--Tweener To(DOGetter`1 getter,DOSetter`1 setter,UInt64 endValue,Single duration)
--*
--TweenerCore`3 To(DOGetter`1 getter,DOSetter`1 setter,String endValue,Single duration)
--*
--TweenerCore`3 To(DOGetter`1 getter,DOSetter`1 setter,Vector2 endValue,Single duration)
--*
--TweenerCore`3 To(DOGetter`1 getter,DOSetter`1 setter,Vector3 endValue,Single duration)
--*
--TweenerCore`3 To(DOGetter`1 getter,DOSetter`1 setter,Vector4 endValue,Single duration)
--*
--TweenerCore`3 To(DOGetter`1 getter,DOSetter`1 setter,Vector3 endValue,Single duration)
--*
--TweenerCore`3 To(DOGetter`1 getter,DOSetter`1 setter,Color endValue,Single duration)
--*
--TweenerCore`3 To(DOGetter`1 getter,DOSetter`1 setter,Rect endValue,Single duration)
--*
--Tweener To(DOGetter`1 getter,DOSetter`1 setter,RectOffset endValue,Single duration)
--*
--Tweener To(DOSetter`1 setter,Single startValue,Single endValue,Single duration)
--*
--static method,use '.'
function DOTween.To() end 

--[Comment]
--overrides:
--*
--TweenerCore`3 ToAxis(DOGetter`1 getter,DOSetter`1 setter,Single endValue,Single duration,AxisConstraint axisConstraint)
--*
--static method,use '.'
function DOTween.ToAxis() end 

--[Comment]
--overrides:
--*
--Tweener ToAlpha(DOGetter`1 getter,DOSetter`1 setter,Single endValue,Single duration)
--*
--static method,use '.'
function DOTween.ToAlpha() end 

--[Comment]
--overrides:
--*
--TweenerCore`3 Punch(DOGetter`1 getter,DOSetter`1 setter,Vector3 direction,Single duration,Int32 vibrato,Single elasticity)
--*
--static method,use '.'
function DOTween.Punch() end 

--[Comment]
--overrides:
--*
--TweenerCore`3 Shake(DOGetter`1 getter,DOSetter`1 setter,Single duration,Single strength,Int32 vibrato,Single randomness,Boolean ignoreZAxis)
--*
--TweenerCore`3 Shake(DOGetter`1 getter,DOSetter`1 setter,Single duration,Vector3 strength,Int32 vibrato,Single randomness)
--*
--static method,use '.'
function DOTween.Shake() end 

--[Comment]
--overrides:
--*
--TweenerCore`3 ToArray(DOGetter`1 getter,DOSetter`1 setter,Vector3[] endValues,Single[] durations)
--*
--static method,use '.'
function DOTween.ToArray() end 

--[Comment]
--overrides:
--*
--Sequence Sequence()
--*
--static method,use '.'
function DOTween.Sequence() end 

--[Comment]
--overrides:
--*
--Int32 CompleteAll()
--*
--static method,use '.'
function DOTween.CompleteAll() end 

--[Comment]
--overrides:
--*
--Int32 Complete(Object targetOrId)
--*
--static method,use '.'
function DOTween.Complete() end 

--[Comment]
--overrides:
--*
--Int32 FlipAll()
--*
--static method,use '.'
function DOTween.FlipAll() end 

--[Comment]
--overrides:
--*
--Int32 Flip(Object targetOrId)
--*
--static method,use '.'
function DOTween.Flip() end 

--[Comment]
--overrides:
--*
--Int32 GotoAll(Single to,Boolean andPlay)
--*
--static method,use '.'
function DOTween.GotoAll() end 

--[Comment]
--overrides:
--*
--Int32 Goto(Object targetOrId,Single to,Boolean andPlay)
--*
--static method,use '.'
function DOTween.Goto() end 

--[Comment]
--overrides:
--*
--Int32 KillAll(Boolean complete)
--
--params:
--complete:    If TRUE completes the tweens before killing them

--*
--static method,use '.'
function DOTween.KillAll() end 

--[Comment]
--overrides:
--*
--Int32 Kill(Object targetOrId,Boolean complete)
--
--params:
--complete:    If TRUE completes the tweens before killing them

--*
--static method,use '.'
function DOTween.Kill() end 

--[Comment]
--overrides:
--*
--Int32 PauseAll()
--*
--static method,use '.'
function DOTween.PauseAll() end 

--[Comment]
--overrides:
--*
--Int32 Pause(Object targetOrId)
--*
--static method,use '.'
function DOTween.Pause() end 

--[Comment]
--overrides:
--*
--Int32 PlayAll()
--*
--static method,use '.'
function DOTween.PlayAll() end 

--[Comment]
--overrides:
--*
--Int32 Play(Object targetOrId)
--*
--Int32 Play(Object target,Object id)
--*
--static method,use '.'
function DOTween.Play() end 

--[Comment]
--overrides:
--*
--Int32 PlayBackwardsAll()
--*
--static method,use '.'
function DOTween.PlayBackwardsAll() end 

--[Comment]
--overrides:
--*
--Int32 PlayBackwards(Object targetOrId)
--*
--static method,use '.'
function DOTween.PlayBackwards() end 

--[Comment]
--overrides:
--*
--Int32 PlayForwardAll()
--*
--static method,use '.'
function DOTween.PlayForwardAll() end 

--[Comment]
--overrides:
--*
--Int32 PlayForward(Object targetOrId)
--*
--static method,use '.'
function DOTween.PlayForward() end 

--[Comment]
--overrides:
--*
--Int32 RestartAll(Boolean includeDelay)
--*
--static method,use '.'
function DOTween.RestartAll() end 

--[Comment]
--overrides:
--*
--Int32 Restart(Object targetOrId,Boolean includeDelay)
--*
--Int32 Restart(Object target,Object id,Boolean includeDelay)
--*
--static method,use '.'
function DOTween.Restart() end 

--[Comment]
--overrides:
--*
--Int32 RewindAll(Boolean includeDelay)
--*
--static method,use '.'
function DOTween.RewindAll() end 

--[Comment]
--overrides:
--*
--Int32 Rewind(Object targetOrId,Boolean includeDelay)
--*
--static method,use '.'
function DOTween.Rewind() end 

--[Comment]
--overrides:
--*
--Int32 TogglePauseAll()
--*
--static method,use '.'
function DOTween.TogglePauseAll() end 

--[Comment]
--overrides:
--*
--Int32 TogglePause(Object targetOrId)
--*
--static method,use '.'
function DOTween.TogglePause() end 

--[Comment]
--overrides:
--*
--Boolean IsTweening(Object targetOrId)
--You can also use this to know if a shortcut tween is active for a given target.
--*
--static method,use '.'
function DOTween.IsTweening() end 

--[Comment]
--overrides:
--*
--Int32 TotalPlayingTweens()
--*
--static method,use '.'
function DOTween.TotalPlayingTweens() end 

--[Comment]
--overrides:
--*
--List`1 PlayingTweens()
--Beware: each time you call this method a new list is generated, so use it for debug only
--*
--static method,use '.'
function DOTween.PlayingTweens() end 

--[Comment]
--overrides:
--*
--List`1 PausedTweens()
--Beware: each time you call this method a new list is generated, so use it for debug only
--*
--static method,use '.'
function DOTween.PausedTweens() end 

--[Comment]
--overrides:
--*
--List`1 TweensById(Object id,Boolean playingOnly)
--Beware: each time you call this method a new list is generated
--*
--static method,use '.'
function DOTween.TweensById() end 

--[Comment]
--overrides:
--*
--List`1 TweensByTarget(Object target,Boolean playingOnly)
--Beware: each time you call this method a new list is generated
--*
--static method,use '.'
function DOTween.TweensByTarget() end 

Tween = {} 
--*
--[Comment]
-- property: Single Tween.fullPosition	get	set	
Tween.fullPosition = nil 
--*
Sequence = {} 
--*
--[Comment]
-- property: Single Sequence.fullPosition	get	set	
Sequence.fullPosition = nil 
--*
Tweener = {} 
--*
--[Comment]
-- property: Single Tweener.fullPosition	get	set	
Tweener.fullPosition = nil 
--*
--[Comment]
--overrides:
--*
--Tweener ChangeStartValue(Object newStartValue,Single newDuration)
--
--params:
--newStartValue:    The new start value
--newDuration:    If bigger than 0 applies it as the new tween duration

--*
--no static method,use ':'
function Tweener:ChangeStartValue() end 

--[Comment]
--overrides:
--*
--Tweener ChangeEndValue(Object newEndValue,Single newDuration,Boolean snapStartValue)
--
--params:
--newEndValue:    The new end value
--newDuration:    If bigger than 0 applies it as the new tween duration
--snapStartValue:    If TRUE the start value will become the current target's value, otherwise it will stay the same

--*
--Tweener ChangeEndValue(Object newEndValue,Boolean snapStartValue)
--
--params:
--newEndValue:    The new end value
--snapStartValue:    If TRUE the start value will become the current target's value, otherwise it will stay the same

--*
--no static method,use ':'
function Tweener:ChangeEndValue() end 

--[Comment]
--overrides:
--*
--Tweener ChangeValues(Object newStartValue,Object newEndValue,Single newDuration)
--
--params:
--newStartValue:    The new start value
--newEndValue:    The new end value
--newDuration:    If bigger than 0 applies it as the new tween duration

--*
--no static method,use ':'
function Tweener:ChangeValues() end 

LoopType = {} 

LoopType.Restart = nil;

LoopType.Yoyo = nil;

LoopType.Incremental = nil;

PathMode = {} 

PathMode.Ignore = nil;

PathMode.Full3D = nil;

PathMode.TopDown2D = nil;

PathMode.Sidescroller2D = nil;

PathType = {} 

PathType.Linear = nil;

PathType.CatmullRom = nil;

RotateMode = {} 

RotateMode.Fast = nil;

RotateMode.FastBeyond360 = nil;

RotateMode.WorldAxisAdd = nil;

RotateMode.LocalAxisAdd = nil;

Component = {} 
--*
--[Comment]
--consturctor for Component overrides:
--*
--Component.New()
--*

function Component.New() end
--*
--[Comment]
-- property: Transform Component.transform	get	
--The Transform attached to this GameObject.
Component.transform = nil 
--*
--[Comment]
-- property: GameObject Component.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
Component.gameObject = nil 
--*
--[Comment]
-- property: String Component.tag	get	set	
--The tag of this game object.
Component.tag = nil 
--*
--[Comment]
-- property: String Component.name	get	set	
--The name of the object.
Component.name = nil 
--*
--[Comment]
-- property: HideFlags Component.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Component.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Component GetComponent(Type type)
--Returns the component of Type type if the game object has one attached, null if it doesn't.
--params:
--type:    The type of Component to retrieve.

--*
--Component GetComponent(String type)
--Returns the component with name type if the game object has one attached, null if it doesn't.
--*
--no static method,use ':'
function Component:GetComponent() end 

--[Comment]
--overrides:
--*
--Component GetComponentInChildren(Type t,Boolean includeInactive)
--*
--Component GetComponentInChildren(Type t)
--Returns the component of Type type in the GameObject or any of its children using depth first search.
--params:
--t:    The type of Component to retrieve.

--*
--no static method,use ':'
function Component:GetComponentInChildren() end 

--[Comment]
--overrides:
--*
--Component[] GetComponentsInChildren(Type t)
--Returns all components of Type type in the GameObject or any of its children.
--params:
--t:    The type of Component to retrieve.
--includeInactive:    Should Components on inactive GameObjects be included in the found set?

--*
--Component[] GetComponentsInChildren(Type t,Boolean includeInactive)
--Returns all components of Type type in the GameObject or any of its children.
--params:
--t:    The type of Component to retrieve.
--includeInactive:    Should Components on inactive GameObjects be included in the found set?

--*
--no static method,use ':'
function Component:GetComponentsInChildren() end 

--[Comment]
--overrides:
--*
--Component GetComponentInParent(Type t)
--Returns the component of Type type in the GameObject or any of its parents.
--params:
--t:    The type of Component to retrieve.

--*
--no static method,use ':'
function Component:GetComponentInParent() end 

--[Comment]
--overrides:
--*
--Component[] GetComponentsInParent(Type t)
--*
--Component[] GetComponentsInParent(Type t,Boolean includeInactive)
--Returns all components of Type type in the GameObject or any of its parents.
--params:
--t:    The type of Component to retrieve.
--includeInactive:    Should inactive Components be included in the found set?

--*
--no static method,use ':'
function Component:GetComponentsInParent() end 

--[Comment]
--overrides:
--*
--Component[] GetComponents(Type type)
--Returns all components of Type type in the GameObject.
--params:
--type:    The type of Component to retrieve.

--*
--Void GetComponents(Type type,List`1 results)
--*
--no static method,use ':'
function Component:GetComponents() end 

--[Comment]
--overrides:
--*
--Boolean CompareTag(String tag)
--Is this game object tagged with tag ?
--params:
--tag:    The tag to compare.

--*
--no static method,use ':'
function Component:CompareTag() end 

--[Comment]
--overrides:
--*
--Void SendMessageUpwards(String methodName,Object value,SendMessageOptions options)
--Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour.
--params:
--methodName:    Name of method to call.
--value:    Optional parameter value for the method.
--options:    Should an error be raised if the method does not exist on the target object?

--*
--Void SendMessageUpwards(String methodName,Object value)
--Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour.
--params:
--methodName:    Name of method to call.
--value:    Optional parameter value for the method.
--options:    Should an error be raised if the method does not exist on the target object?

--*
--Void SendMessageUpwards(String methodName)
--Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour.
--params:
--methodName:    Name of method to call.
--value:    Optional parameter value for the method.
--options:    Should an error be raised if the method does not exist on the target object?

--*
--Void SendMessageUpwards(String methodName,SendMessageOptions options)
--Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour.
--params:
--methodName:    Name of method to call.
--value:    Optional parameter value for the method.
--options:    Should an error be raised if the method does not exist on the target object?

--*
--no static method,use ':'
function Component:SendMessageUpwards() end 

--[Comment]
--overrides:
--*
--Void SendMessage(String methodName,Object value,SendMessageOptions options)
--Calls the method named methodName on every MonoBehaviour in this game object.
--params:
--methodName:    Name of the method to call.
--value:    Optional parameter for the method.
--options:    Should an error be raised if the target object doesn't implement the method for the message?

--*
--Void SendMessage(String methodName,Object value)
--Calls the method named methodName on every MonoBehaviour in this game object.
--params:
--methodName:    Name of the method to call.
--value:    Optional parameter for the method.
--options:    Should an error be raised if the target object doesn't implement the method for the message?

--*
--Void SendMessage(String methodName)
--Calls the method named methodName on every MonoBehaviour in this game object.
--params:
--methodName:    Name of the method to call.
--value:    Optional parameter for the method.
--options:    Should an error be raised if the target object doesn't implement the method for the message?

--*
--Void SendMessage(String methodName,SendMessageOptions options)
--Calls the method named methodName on every MonoBehaviour in this game object.
--params:
--methodName:    Name of the method to call.
--value:    Optional parameter for the method.
--options:    Should an error be raised if the target object doesn't implement the method for the message?

--*
--no static method,use ':'
function Component:SendMessage() end 

--[Comment]
--overrides:
--*
--Void BroadcastMessage(String methodName,Object parameter,SendMessageOptions options)
--Calls the method named methodName on every MonoBehaviour in this game object or any of its children.
--params:
--methodName:    Name of the method to call.
--parameter:    Optional parameter to pass to the method (can be any value).
--options:    Should an error be raised if the method does not exist for a given target object?

--*
--Void BroadcastMessage(String methodName,Object parameter)
--Calls the method named methodName on every MonoBehaviour in this game object or any of its children.
--params:
--methodName:    Name of the method to call.
--parameter:    Optional parameter to pass to the method (can be any value).
--options:    Should an error be raised if the method does not exist for a given target object?

--*
--Void BroadcastMessage(String methodName)
--Calls the method named methodName on every MonoBehaviour in this game object or any of its children.
--params:
--methodName:    Name of the method to call.
--parameter:    Optional parameter to pass to the method (can be any value).
--options:    Should an error be raised if the method does not exist for a given target object?

--*
--Void BroadcastMessage(String methodName,SendMessageOptions options)
--Calls the method named methodName on every MonoBehaviour in this game object or any of its children.
--params:
--methodName:    Name of the method to call.
--parameter:    Optional parameter to pass to the method (can be any value).
--options:    Should an error be raised if the method does not exist for a given target object?

--*
--no static method,use ':'
function Component:BroadcastMessage() end 

Transform = {} 
--*
--[Comment]
-- property: Vector3 Transform.position	get	set	
--The position of the transform in world space.
Transform.position = nil 
--*
--[Comment]
-- property: Vector3 Transform.localPosition	get	set	
--Position of the transform relative to the parent transform.
Transform.localPosition = nil 
--*
--[Comment]
-- property: Vector3 Transform.eulerAngles	get	set	
--The rotation as Euler angles in degrees.
Transform.eulerAngles = nil 
--*
--[Comment]
-- property: Vector3 Transform.localEulerAngles	get	set	
--The rotation as Euler angles in degrees relative to the parent transform's rotation.
Transform.localEulerAngles = nil 
--*
--[Comment]
-- property: Vector3 Transform.right	get	set	
--The red axis of the transform in world space.
Transform.right = nil 
--*
--[Comment]
-- property: Vector3 Transform.up	get	set	
--The green axis of the transform in world space.
Transform.up = nil 
--*
--[Comment]
-- property: Vector3 Transform.forward	get	set	
--The blue axis of the transform in world space.
Transform.forward = nil 
--*
--[Comment]
-- property: Quaternion Transform.rotation	get	set	
--The rotation of the transform in world space stored as a Quaternion.
Transform.rotation = nil 
--*
--[Comment]
-- property: Quaternion Transform.localRotation	get	set	
--The rotation of the transform relative to the parent transform's rotation.
Transform.localRotation = nil 
--*
--[Comment]
-- property: Vector3 Transform.localScale	get	set	
--The scale of the transform relative to the parent.
Transform.localScale = nil 
--*
--[Comment]
-- property: Transform Transform.parent	get	set	
--The parent of the transform.
Transform.parent = nil 
--*
--[Comment]
-- property: Matrix4x4 Transform.worldToLocalMatrix	get	
--Matrix that transforms a point from world space into local space (Read Only).
Transform.worldToLocalMatrix = nil 
--*
--[Comment]
-- property: Matrix4x4 Transform.localToWorldMatrix	get	
--Matrix that transforms a point from local space into world space (Read Only).
Transform.localToWorldMatrix = nil 
--*
--[Comment]
-- property: Transform Transform.root	get	
--Returns the topmost transform in the hierarchy.
Transform.root = nil 
--*
--[Comment]
-- property: Int32 Transform.childCount	get	
--The number of children the Transform has.
Transform.childCount = nil 
--*
--[Comment]
-- property: Vector3 Transform.lossyScale	get	
--The global scale of the object (Read Only).
Transform.lossyScale = nil 
--*
--[Comment]
-- property: Boolean Transform.hasChanged	get	set	
--Has the transform changed since the last time the flag was set to 'false'?
Transform.hasChanged = nil 
--*
--[Comment]
-- property: Int32 Transform.hierarchyCapacity	get	set	
--The transform capacity of the transform's hierarchy data structure.
Transform.hierarchyCapacity = nil 
--*
--[Comment]
-- property: Int32 Transform.hierarchyCount	get	
--The number of transforms in the transform's hierarchy data structure.
Transform.hierarchyCount = nil 
--*
--[Comment]
-- property: Transform Transform.transform	get	
--The Transform attached to this GameObject.
Transform.transform = nil 
--*
--[Comment]
-- property: GameObject Transform.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
Transform.gameObject = nil 
--*
--[Comment]
-- property: String Transform.tag	get	set	
--The tag of this game object.
Transform.tag = nil 
--*
--[Comment]
-- property: String Transform.name	get	set	
--The name of the object.
Transform.name = nil 
--*
--[Comment]
-- property: HideFlags Transform.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Transform.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void SetParent(Transform parent)
--Set the parent of the transform.
--params:
--parent:    The parent Transform to use.
--worldPositionStays:    If true, the parent-relative position, scale and         rotation are modified such that the object keeps the same world space position,         rotation and scale as before.

--*
--Void SetParent(Transform parent,Boolean worldPositionStays)
--Set the parent of the transform.
--params:
--parent:    The parent Transform to use.
--worldPositionStays:    If true, the parent-relative position, scale and         rotation are modified such that the object keeps the same world space position,         rotation and scale as before.

--*
--no static method,use ':'
function Transform:SetParent() end 

--[Comment]
--overrides:
--*
--Void Translate(Vector3 translation)
--Moves the transform in the direction and distance of translation.
--*
--Void Translate(Vector3 translation,Space relativeTo)
--Moves the transform in the direction and distance of translation.
--*
--Void Translate(Single x,Single y,Single z)
--Moves the transform by x along the x axis, y along the y axis, and z along the z axis.
--*
--Void Translate(Single x,Single y,Single z,Space relativeTo)
--Moves the transform by x along the x axis, y along the y axis, and z along the z axis.
--*
--Void Translate(Vector3 translation,Transform relativeTo)
--Moves the transform in the direction and distance of translation.
--*
--Void Translate(Single x,Single y,Single z,Transform relativeTo)
--Moves the transform by x along the x axis, y along the y axis, and z along the z axis.
--*
--no static method,use ':'
function Transform:Translate() end 

--[Comment]
--overrides:
--*
--Void Rotate(Vector3 eulerAngles)
--*
--Void Rotate(Vector3 eulerAngles,Space relativeTo)
--Applies a rotation of eulerAngles.z degrees around the z axis, eulerAngles.x degrees around the x axis, and eulerAngles.y degrees around the y axis (in that order).
--params:
--eulerAngles:    Rotation to apply.
--relativeTo:    Rotation is local to object or World.

--*
--Void Rotate(Single xAngle,Single yAngle,Single zAngle)
--*
--Void Rotate(Single xAngle,Single yAngle,Single zAngle,Space relativeTo)
--Applies a rotation of zAngle degrees around the z axis, xAngle degrees around the x axis, and yAngle degrees around the y axis (in that order).
--params:
--xAngle:    Degrees to rotate around the X axis.
--yAngle:    Degrees to rotate around the Y axis.
--zAngle:    Degrees to rotate around the Z axis.
--relativeTo:    Rotation is local to object or World.

--*
--Void Rotate(Vector3 axis,Single angle)
--*
--Void Rotate(Vector3 axis,Single angle,Space relativeTo)
--Rotates the object around axis by angle degrees.
--params:
--axis:    Axis to apply rotation to.
--angle:    Degrees to rotation to apply.
--relativeTo:    Rotation is local to object or World.

--*
--no static method,use ':'
function Transform:Rotate() end 

--[Comment]
--overrides:
--*
--Void RotateAround(Vector3 point,Vector3 axis,Single angle)
--Rotates the transform about axis passing through point in world coordinates by angle degrees.
--*
--no static method,use ':'
function Transform:RotateAround() end 

--[Comment]
--overrides:
--*
--Void LookAt(Transform target)
--Rotates the transform so the forward vector points at target's current position.
--params:
--target:    Object to point towards.
--worldUp:    Vector specifying the upward direction.

--*
--Void LookAt(Transform target,Vector3 worldUp)
--Rotates the transform so the forward vector points at target's current position.
--params:
--target:    Object to point towards.
--worldUp:    Vector specifying the upward direction.

--*
--Void LookAt(Vector3 worldPosition,Vector3 worldUp)
--Rotates the transform so the forward vector points at worldPosition.
--params:
--worldPosition:    Point to look at.
--worldUp:    Vector specifying the upward direction.

--*
--Void LookAt(Vector3 worldPosition)
--Rotates the transform so the forward vector points at worldPosition.
--params:
--worldPosition:    Point to look at.
--worldUp:    Vector specifying the upward direction.

--*
--no static method,use ':'
function Transform:LookAt() end 

--[Comment]
--overrides:
--*
--Vector3 TransformDirection(Vector3 direction)
--Transforms direction from local space to world space.
--*
--Vector3 TransformDirection(Single x,Single y,Single z)
--Transforms direction x, y, z from local space to world space.
--*
--no static method,use ':'
function Transform:TransformDirection() end 

--[Comment]
--overrides:
--*
--Vector3 InverseTransformDirection(Vector3 direction)
--Transforms a direction from world space to local space. The opposite of Transform.TransformDirection.
--*
--Vector3 InverseTransformDirection(Single x,Single y,Single z)
--Transforms the direction x, y, z from world space to local space. The opposite of Transform.TransformDirection.
--*
--no static method,use ':'
function Transform:InverseTransformDirection() end 

--[Comment]
--overrides:
--*
--Vector3 TransformVector(Vector3 vector)
--Transforms vector from local space to world space.
--*
--Vector3 TransformVector(Single x,Single y,Single z)
--Transforms vector x, y, z from local space to world space.
--*
--no static method,use ':'
function Transform:TransformVector() end 

--[Comment]
--overrides:
--*
--Vector3 InverseTransformVector(Vector3 vector)
--Transforms a vector from world space to local space. The opposite of Transform.TransformVector.
--*
--Vector3 InverseTransformVector(Single x,Single y,Single z)
--Transforms the vector x, y, z from world space to local space. The opposite of Transform.TransformVector.
--*
--no static method,use ':'
function Transform:InverseTransformVector() end 

--[Comment]
--overrides:
--*
--Vector3 TransformPoint(Vector3 position)
--Transforms position from local space to world space.
--*
--Vector3 TransformPoint(Single x,Single y,Single z)
--Transforms the position x, y, z from local space to world space.
--*
--no static method,use ':'
function Transform:TransformPoint() end 

--[Comment]
--overrides:
--*
--Vector3 InverseTransformPoint(Vector3 position)
--Transforms position from world space to local space.
--*
--Vector3 InverseTransformPoint(Single x,Single y,Single z)
--Transforms the position x, y, z from world space to local space. The opposite of Transform.TransformPoint.
--*
--no static method,use ':'
function Transform:InverseTransformPoint() end 

--[Comment]
--overrides:
--*
--Void DetachChildren()
--Unparents all children.
--*
--no static method,use ':'
function Transform:DetachChildren() end 

--[Comment]
--overrides:
--*
--Void SetAsFirstSibling()
--Move the transform to the start of the local transform list.
--*
--no static method,use ':'
function Transform:SetAsFirstSibling() end 

--[Comment]
--overrides:
--*
--Void SetAsLastSibling()
--Move the transform to the end of the local transform list.
--*
--no static method,use ':'
function Transform:SetAsLastSibling() end 

--[Comment]
--overrides:
--*
--Void SetSiblingIndex(Int32 index)
--Sets the sibling index.
--params:
--index:    Index to set.

--*
--no static method,use ':'
function Transform:SetSiblingIndex() end 

--[Comment]
--overrides:
--*
--Int32 GetSiblingIndex()
--Gets the sibling index.
--*
--no static method,use ':'
function Transform:GetSiblingIndex() end 

--[Comment]
--overrides:
--*
--Transform Find(String name)
--Finds a child by name and returns it.
--params:
--name:    Name of child to be found.

--*
--no static method,use ':'
function Transform:Find() end 

--[Comment]
--overrides:
--*
--Boolean IsChildOf(Transform parent)
--Is this transform a child of parent?
--*
--no static method,use ':'
function Transform:IsChildOf() end 

--[Comment]
--overrides:
--*
--Transform FindChild(String name)
--*
--no static method,use ':'
function Transform:FindChild() end 

--[Comment]
--overrides:
--*
--IEnumerator GetEnumerator()
--*
--no static method,use ':'
function Transform:GetEnumerator() end 

--[Comment]
--overrides:
--*
--Transform GetChild(Int32 index)
--Returns a transform child by index.
--params:
--index:    Index of the child transform to return. Must be smaller than Transform.childCount.

--*
--no static method,use ':'
function Transform:GetChild() end 

Light = {} 
--*
--[Comment]
--consturctor for Light overrides:
--*
--Light.New()
--*

function Light.New() end
--*
--[Comment]
-- property: LightType Light.type	get	set	
--The type of the light.
Light.type = nil 
--*
--[Comment]
-- property: Color Light.color	get	set	
--The color of the light.
Light.color = nil 
--*
--[Comment]
-- property: Single Light.intensity	get	set	
--The Intensity of a light is multiplied with the Light color.
Light.intensity = nil 
--*
--[Comment]
-- property: Single Light.bounceIntensity	get	set	
--The multiplier that defines the strength of the bounce lighting.
Light.bounceIntensity = nil 
--*
--[Comment]
-- property: LightShadows Light.shadows	get	set	
--How this light casts shadows
Light.shadows = nil 
--*
--[Comment]
-- property: Single Light.shadowStrength	get	set	
--Strength of light's shadows.
Light.shadowStrength = nil 
--*
--[Comment]
-- property: LightShadowResolution Light.shadowResolution	get	set	
--The resolution of the shadow map.
Light.shadowResolution = nil 
--*
--[Comment]
-- property: Int32 Light.shadowCustomResolution	get	set	
--The custom resolution of the shadow map.
Light.shadowCustomResolution = nil 
--*
--[Comment]
-- property: Single Light.shadowBias	get	set	
--Shadow mapping constant bias.
Light.shadowBias = nil 
--*
--[Comment]
-- property: Single Light.shadowNormalBias	get	set	
--Shadow mapping normal-based bias.
Light.shadowNormalBias = nil 
--*
--[Comment]
-- property: Single Light.shadowNearPlane	get	set	
--Near plane value to use for shadow frustums.
Light.shadowNearPlane = nil 
--*
--[Comment]
-- property: Single Light.range	get	set	
--The range of the light.
Light.range = nil 
--*
--[Comment]
-- property: Single Light.spotAngle	get	set	
--The angle of the light's spotlight cone in degrees.
Light.spotAngle = nil 
--*
--[Comment]
-- property: Single Light.cookieSize	get	set	
--The size of a directional light's cookie.
Light.cookieSize = nil 
--*
--[Comment]
-- property: Texture Light.cookie	get	set	
--The cookie texture projected by the light.
Light.cookie = nil 
--*
--[Comment]
-- property: Flare Light.flare	get	set	
--The to use for this light.
Light.flare = nil 
--*
--[Comment]
-- property: LightRenderMode Light.renderMode	get	set	
--How to render the light.
Light.renderMode = nil 
--*
--[Comment]
-- property: Int32 Light.bakedIndex	get	set	
--A unique index, used internally for identifying lights contributing to lightmaps and/or light probes.
Light.bakedIndex = nil 
--*
--[Comment]
-- property: Boolean Light.isBaked	get	
--Is the light contribution already stored in lightmaps and/or lightprobes (Read Only).
Light.isBaked = nil 
--*
--[Comment]
-- property: Int32 Light.cullingMask	get	set	
--This is used to light certain objects in the scene selectively.
Light.cullingMask = nil 
--*
--[Comment]
-- property: Vector2 Light.areaSize	get	set	
--The size of the area light. Editor only.
Light.areaSize = nil 
--*
--[Comment]
-- property: LightmappingMode Light.lightmappingMode	get	set	
--This property controls whether this light only affects lightmap baking, or dynamic objects, or both.
Light.lightmappingMode = nil 
--*
--[Comment]
-- property: Int32 Light.commandBufferCount	get	
--Number of command buffers set up on this light (Read Only).
Light.commandBufferCount = nil 
--*
--[Comment]
-- property: Boolean Light.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
Light.enabled = nil 
--*
--[Comment]
-- property: Boolean Light.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
Light.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform Light.transform	get	
--The Transform attached to this GameObject.
Light.transform = nil 
--*
--[Comment]
-- property: GameObject Light.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
Light.gameObject = nil 
--*
--[Comment]
-- property: String Light.tag	get	set	
--The tag of this game object.
Light.tag = nil 
--*
--[Comment]
-- property: String Light.name	get	set	
--The name of the object.
Light.name = nil 
--*
--[Comment]
-- property: HideFlags Light.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Light.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void AddCommandBuffer(LightEvent evt,CommandBuffer buffer)
--Add a command buffer to be executed at a specified place.
--params:
--evt:    When to execute the command buffer during rendering.
--buffer:    The buffer to execute.

--*
--no static method,use ':'
function Light:AddCommandBuffer() end 

--[Comment]
--overrides:
--*
--Void RemoveCommandBuffer(LightEvent evt,CommandBuffer buffer)
--Remove command buffer from execution at a specified place.
--params:
--evt:    When to execute the command buffer during rendering.
--buffer:    The buffer to execute.

--*
--no static method,use ':'
function Light:RemoveCommandBuffer() end 

--[Comment]
--overrides:
--*
--Void RemoveCommandBuffers(LightEvent evt)
--Remove command buffers from execution at a specified place.
--params:
--evt:    When to execute the command buffer during rendering.

--*
--no static method,use ':'
function Light:RemoveCommandBuffers() end 

--[Comment]
--overrides:
--*
--Void RemoveAllCommandBuffers()
--Remove all command buffers set on this light.
--*
--no static method,use ':'
function Light:RemoveAllCommandBuffers() end 

--[Comment]
--overrides:
--*
--CommandBuffer[] GetCommandBuffers(LightEvent evt)
--Get command buffers to be executed at a specified place.
--params:
--evt:    When to execute the command buffer during rendering.

--*
--no static method,use ':'
function Light:GetCommandBuffers() end 

--[Comment]
--overrides:
--*
--Light[] GetLights(LightType type,Int32 layer)
--*
--static method,use '.'
function Light.GetLights() end 

Material = {} 
--*
--[Comment]
--consturctor for Material overrides:
--*
--Material.New(Shader shader)
--Create a temporary Material.
--params:
--shader:    Create a material with a given Shader.
--source:    Create a material by copying all properties from another material.

--*

--Material.New(Material source)
--Create a temporary Material.
--params:
--shader:    Create a material with a given Shader.
--source:    Create a material by copying all properties from another material.

--*

function Material.New() end
--*
--[Comment]
-- property: Shader Material.shader	get	set	
--The shader used by the material.
Material.shader = nil 
--*
--[Comment]
-- property: Color Material.color	get	set	
--The main material's color.
Material.color = nil 
--*
--[Comment]
-- property: Texture Material.mainTexture	get	set	
--The material's texture.
Material.mainTexture = nil 
--*
--[Comment]
-- property: Vector2 Material.mainTextureOffset	get	set	
--The texture offset of the main texture.
Material.mainTextureOffset = nil 
--*
--[Comment]
-- property: Vector2 Material.mainTextureScale	get	set	
--The texture scale of the main texture.
Material.mainTextureScale = nil 
--*
--[Comment]
-- property: Int32 Material.passCount	get	
--How many passes are in this material (Read Only).
Material.passCount = nil 
--*
--[Comment]
-- property: Int32 Material.renderQueue	get	set	
--Render queue of this material.
Material.renderQueue = nil 
--*
--[Comment]
-- property: String[] Material.shaderKeywords	get	set	
--Additional shader keywords set by this material.
Material.shaderKeywords = nil 
--*
--[Comment]
-- property: MaterialGlobalIlluminationFlags Material.globalIlluminationFlags	get	set	
--Defines how the material should interact with lightmaps and lightprobes.
Material.globalIlluminationFlags = nil 
--*
--[Comment]
-- property: String Material.name	get	set	
--The name of the object.
Material.name = nil 
--*
--[Comment]
-- property: HideFlags Material.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Material.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void SetColor(String propertyName,Color color)
--Set a named color value.
--params:
--propertyName:    Property name, e.g. "_Color".
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--color:    Color value to set.

--*
--Void SetColor(Int32 nameID,Color color)
--Set a named color value.
--params:
--propertyName:    Property name, e.g. "_Color".
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--color:    Color value to set.

--*
--no static method,use ':'
function Material:SetColor() end 

--[Comment]
--overrides:
--*
--Color GetColor(String propertyName)
--Get a named color value.
--params:
--propertyName:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--Color GetColor(Int32 nameID)
--Get a named color value.
--params:
--propertyName:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--no static method,use ':'
function Material:GetColor() end 

--[Comment]
--overrides:
--*
--Void SetVector(String propertyName,Vector4 vector)
--Set a named vector value.
--params:
--propertyName:    Property name, e.g. "_WaveAndDistance".
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--vector:    Vector value to set.

--*
--Void SetVector(Int32 nameID,Vector4 vector)
--Set a named vector value.
--params:
--propertyName:    Property name, e.g. "_WaveAndDistance".
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--vector:    Vector value to set.

--*
--no static method,use ':'
function Material:SetVector() end 

--[Comment]
--overrides:
--*
--Vector4 GetVector(String propertyName)
--Get a named vector value.
--params:
--propertyName:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--Vector4 GetVector(Int32 nameID)
--Get a named vector value.
--params:
--propertyName:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--no static method,use ':'
function Material:GetVector() end 

--[Comment]
--overrides:
--*
--Void SetTexture(String propertyName,Texture texture)
--Set a named texture.
--params:
--propertyName:    Property name, e.g. "_MainTex".
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--texture:    Texture to set.

--*
--Void SetTexture(Int32 nameID,Texture texture)
--Set a named texture.
--params:
--propertyName:    Property name, e.g. "_MainTex".
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--texture:    Texture to set.

--*
--no static method,use ':'
function Material:SetTexture() end 

--[Comment]
--overrides:
--*
--Texture GetTexture(String propertyName)
--Get a named texture.
--params:
--propertyName:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--Texture GetTexture(Int32 nameID)
--Get a named texture.
--params:
--propertyName:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--no static method,use ':'
function Material:GetTexture() end 

--[Comment]
--overrides:
--*
--Void SetTextureOffset(String propertyName,Vector2 offset)
--Sets the placement offset of texture propertyName.
--*
--no static method,use ':'
function Material:SetTextureOffset() end 

--[Comment]
--overrides:
--*
--Vector2 GetTextureOffset(String propertyName)
--Gets the placement offset of texture propertyName.
--params:
--propertyName:    The name of the property.

--*
--no static method,use ':'
function Material:GetTextureOffset() end 

--[Comment]
--overrides:
--*
--Void SetTextureScale(String propertyName,Vector2 scale)
--Sets the placement scale of texture propertyName.
--*
--no static method,use ':'
function Material:SetTextureScale() end 

--[Comment]
--overrides:
--*
--Vector2 GetTextureScale(String propertyName)
--Gets the placement scale of texture propertyName.
--params:
--propertyName:    The name of the property.

--*
--no static method,use ':'
function Material:GetTextureScale() end 

--[Comment]
--overrides:
--*
--Void SetMatrix(String propertyName,Matrix4x4 matrix)
--Set a named matrix for the shader.
--params:
--propertyName:    Property name, e.g. "_CubemapRotation".
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--matrix:    Matrix value to set.

--*
--Void SetMatrix(Int32 nameID,Matrix4x4 matrix)
--Set a named matrix for the shader.
--params:
--propertyName:    Property name, e.g. "_CubemapRotation".
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--matrix:    Matrix value to set.

--*
--no static method,use ':'
function Material:SetMatrix() end 

--[Comment]
--overrides:
--*
--Matrix4x4 GetMatrix(String propertyName)
--Get a named matrix value from the shader.
--params:
--propertyName:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--Matrix4x4 GetMatrix(Int32 nameID)
--Get a named matrix value from the shader.
--params:
--propertyName:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--no static method,use ':'
function Material:GetMatrix() end 

--[Comment]
--overrides:
--*
--Void SetFloat(String propertyName,Single value)
--Set a named float value.
--params:
--propertyName:    Property name, e.g. "_Glossiness".
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--value:    Float value to set.

--*
--Void SetFloat(Int32 nameID,Single value)
--Set a named float value.
--params:
--propertyName:    Property name, e.g. "_Glossiness".
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--value:    Float value to set.

--*
--no static method,use ':'
function Material:SetFloat() end 

--[Comment]
--overrides:
--*
--Single GetFloat(String propertyName)
--Get a named float value.
--params:
--propertyName:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--Single GetFloat(Int32 nameID)
--Get a named float value.
--params:
--propertyName:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--no static method,use ':'
function Material:GetFloat() end 

--[Comment]
--overrides:
--*
--Void SetFloatArray(String name,List`1 values)
--*
--Void SetFloatArray(Int32 nameID,List`1 values)
--*
--Void SetFloatArray(String name,Single[] values)
--Set a float array property.
--params:
--name:    Property name.
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--values:    Array of values to set.

--*
--Void SetFloatArray(Int32 nameID,Single[] values)
--Set a float array property.
--params:
--name:    Property name.
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--values:    Array of values to set.

--*
--no static method,use ':'
function Material:SetFloatArray() end 

--[Comment]
--overrides:
--*
--Void SetVectorArray(String name,List`1 values)
--*
--Void SetVectorArray(Int32 nameID,List`1 values)
--*
--Void SetVectorArray(String name,Vector4[] values)
--Set a vector array property.
--params:
--name:    Property name.
--values:    Array of values to set.
--nameID:    Property name ID, use Shader.PropertyToID to get it.

--*
--Void SetVectorArray(Int32 nameID,Vector4[] values)
--Set a vector array property.
--params:
--name:    Property name.
--values:    Array of values to set.
--nameID:    Property name ID, use Shader.PropertyToID to get it.

--*
--no static method,use ':'
function Material:SetVectorArray() end 

--[Comment]
--overrides:
--*
--Void SetColorArray(String name,List`1 values)
--*
--Void SetColorArray(Int32 nameID,List`1 values)
--*
--Void SetColorArray(String name,Color[] values)
--Set a color array property.
--params:
--name:    Property name.
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--values:    Array of values to set.

--*
--Void SetColorArray(Int32 nameID,Color[] values)
--Set a color array property.
--params:
--name:    Property name.
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--values:    Array of values to set.

--*
--no static method,use ':'
function Material:SetColorArray() end 

--[Comment]
--overrides:
--*
--Void SetMatrixArray(String name,List`1 values)
--*
--Void SetMatrixArray(Int32 nameID,List`1 values)
--*
--Void SetMatrixArray(String name,Matrix4x4[] values)
--Set a matrix array property.
--params:
--name:    Property name.
--values:    Array of values to set.
--nameID:    Property name ID, use Shader.PropertyToID to get it.

--*
--Void SetMatrixArray(Int32 nameID,Matrix4x4[] values)
--Set a matrix array property.
--params:
--name:    Property name.
--values:    Array of values to set.
--nameID:    Property name ID, use Shader.PropertyToID to get it.

--*
--no static method,use ':'
function Material:SetMatrixArray() end 

--[Comment]
--overrides:
--*
--Void GetFloatArray(String name,List`1 values)
--*
--Void GetFloatArray(Int32 nameID,List`1 values)
--*
--Single[] GetFloatArray(String name)
--Get a named float array.
--params:
--name:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--Single[] GetFloatArray(Int32 nameID)
--Get a named float array.
--params:
--name:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--no static method,use ':'
function Material:GetFloatArray() end 

--[Comment]
--overrides:
--*
--Void GetVectorArray(String name,List`1 values)
--*
--Void GetVectorArray(Int32 nameID,List`1 values)
--*
--Vector4[] GetVectorArray(String name)
--Get a named vector array.
--params:
--name:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--Vector4[] GetVectorArray(Int32 nameID)
--Get a named vector array.
--params:
--name:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--no static method,use ':'
function Material:GetVectorArray() end 

--[Comment]
--overrides:
--*
--Void GetColorArray(String name,List`1 values)
--*
--Void GetColorArray(Int32 nameID,List`1 values)
--*
--Color[] GetColorArray(String name)
--Get a named color array.
--params:
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.
--name:    The name of the property.

--*
--Color[] GetColorArray(Int32 nameID)
--Get a named color array.
--params:
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.
--name:    The name of the property.

--*
--no static method,use ':'
function Material:GetColorArray() end 

--[Comment]
--overrides:
--*
--Void GetMatrixArray(String name,List`1 values)
--*
--Void GetMatrixArray(Int32 nameID,List`1 values)
--*
--Matrix4x4[] GetMatrixArray(String name)
--Get a named matrix array.
--params:
--name:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--Matrix4x4[] GetMatrixArray(Int32 nameID)
--Get a named matrix array.
--params:
--name:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--no static method,use ':'
function Material:GetMatrixArray() end 

--[Comment]
--overrides:
--*
--Void SetInt(String propertyName,Int32 value)
--Set a named integer value.
--params:
--propertyName:    Property name, e.g. "_SrcBlend".
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--value:    Integer value to set.

--*
--Void SetInt(Int32 nameID,Int32 value)
--Set a named integer value.
--params:
--propertyName:    Property name, e.g. "_SrcBlend".
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--value:    Integer value to set.

--*
--no static method,use ':'
function Material:SetInt() end 

--[Comment]
--overrides:
--*
--Int32 GetInt(String propertyName)
--Get a named integer value.
--params:
--propertyName:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--Int32 GetInt(Int32 nameID)
--Get a named integer value.
--params:
--propertyName:    The name of the property.
--nameID:    The name ID of the property retrieved by Shader.PropertyToID.

--*
--no static method,use ':'
function Material:GetInt() end 

--[Comment]
--overrides:
--*
--Void SetBuffer(String name,ComputeBuffer value)
--Set a named ComputeBuffer value.
--params:
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--name:    Property name.
--value:    ComputeBuffer value to set.

--*
--Void SetBuffer(Int32 nameID,ComputeBuffer value)
--Set a named ComputeBuffer value.
--params:
--nameID:    Property name ID, use Shader.PropertyToID to get it.
--name:    Property name.
--value:    ComputeBuffer value to set.

--*
--no static method,use ':'
function Material:SetBuffer() end 

--[Comment]
--overrides:
--*
--Boolean HasProperty(String propertyName)
--Checks if material's shader has a property of a given name.
--*
--Boolean HasProperty(Int32 nameID)
--Checks if material's shader has a property of a given name.
--*
--no static method,use ':'
function Material:HasProperty() end 

--[Comment]
--overrides:
--*
--String GetTag(String tag,Boolean searchFallbacks,String defaultValue)
--Get the value of material's shader tag.
--*
--String GetTag(String tag,Boolean searchFallbacks)
--Get the value of material's shader tag.
--*
--no static method,use ':'
function Material:GetTag() end 

--[Comment]
--overrides:
--*
--Void SetOverrideTag(String tag,String val)
--Sets an override tag/value on the material.
--params:
--tag:    Name of the tag to set.
--val:    Name of the value to set. Empty string to clear the override flag.

--*
--no static method,use ':'
function Material:SetOverrideTag() end 

--[Comment]
--overrides:
--*
--Void Lerp(Material start,Material end,Single t)
--Interpolate properties between two materials.
--*
--no static method,use ':'
function Material:Lerp() end 

--[Comment]
--overrides:
--*
--Boolean SetPass(Int32 pass)
--Activate the given pass for rendering.
--params:
--pass:    Shader pass number to setup.

--*
--no static method,use ':'
function Material:SetPass() end 

--[Comment]
--overrides:
--*
--String GetPassName(Int32 pass)
--Returns the name of the shader pass at index pass.
--*
--no static method,use ':'
function Material:GetPassName() end 

--[Comment]
--overrides:
--*
--Int32 FindPass(String passName)
--Returns the index of the pass passName.
--*
--no static method,use ':'
function Material:FindPass() end 

--[Comment]
--overrides:
--*
--Void CopyPropertiesFromMaterial(Material mat)
--Copy properties from other material into this material.
--*
--no static method,use ':'
function Material:CopyPropertiesFromMaterial() end 

--[Comment]
--overrides:
--*
--Void EnableKeyword(String keyword)
--Set a shader keyword that is enabled by this material.
--*
--no static method,use ':'
function Material:EnableKeyword() end 

--[Comment]
--overrides:
--*
--Void DisableKeyword(String keyword)
--Unset a shader keyword.
--*
--no static method,use ':'
function Material:DisableKeyword() end 

--[Comment]
--overrides:
--*
--Boolean IsKeywordEnabled(String keyword)
--Is the shader keyword enabled on this material?
--*
--no static method,use ':'
function Material:IsKeywordEnabled() end 

Rigidbody = {} 
--*
--[Comment]
--consturctor for Rigidbody overrides:
--*
--Rigidbody.New()
--*

function Rigidbody.New() end
--*
--[Comment]
-- property: Vector3 Rigidbody.velocity	get	set	
--The velocity vector of the rigidbody.
Rigidbody.velocity = nil 
--*
--[Comment]
-- property: Vector3 Rigidbody.angularVelocity	get	set	
--The angular velocity vector of the rigidbody.
Rigidbody.angularVelocity = nil 
--*
--[Comment]
-- property: Single Rigidbody.drag	get	set	
--The drag of the object.
Rigidbody.drag = nil 
--*
--[Comment]
-- property: Single Rigidbody.angularDrag	get	set	
--The angular drag of the object.
Rigidbody.angularDrag = nil 
--*
--[Comment]
-- property: Single Rigidbody.mass	get	set	
--The mass of the rigidbody.
Rigidbody.mass = nil 
--*
--[Comment]
-- property: Boolean Rigidbody.useGravity	get	set	
--Controls whether gravity affects this rigidbody.
Rigidbody.useGravity = nil 
--*
--[Comment]
-- property: Single Rigidbody.maxDepenetrationVelocity	get	set	
--Maximum velocity of a rigidbody when moving out of penetrating state.
Rigidbody.maxDepenetrationVelocity = nil 
--*
--[Comment]
-- property: Boolean Rigidbody.isKinematic	get	set	
--Controls whether physics affects the rigidbody.
Rigidbody.isKinematic = nil 
--*
--[Comment]
-- property: Boolean Rigidbody.freezeRotation	get	set	
--Controls whether physics will change the rotation of the object.
Rigidbody.freezeRotation = nil 
--*
--[Comment]
-- property: RigidbodyConstraints Rigidbody.constraints	get	set	
--Controls which degrees of freedom are allowed for the simulation of this Rigidbody.
Rigidbody.constraints = nil 
--*
--[Comment]
-- property: CollisionDetectionMode Rigidbody.collisionDetectionMode	get	set	
--The Rigidbody's collision detection mode.
Rigidbody.collisionDetectionMode = nil 
--*
--[Comment]
-- property: Vector3 Rigidbody.centerOfMass	get	set	
--The center of mass relative to the transform's origin.
Rigidbody.centerOfMass = nil 
--*
--[Comment]
-- property: Vector3 Rigidbody.worldCenterOfMass	get	
--The center of mass of the rigidbody in world space (Read Only).
Rigidbody.worldCenterOfMass = nil 
--*
--[Comment]
-- property: Quaternion Rigidbody.inertiaTensorRotation	get	set	
--The rotation of the inertia tensor.
Rigidbody.inertiaTensorRotation = nil 
--*
--[Comment]
-- property: Vector3 Rigidbody.inertiaTensor	get	set	
--The diagonal inertia tensor of mass relative to the center of mass.
Rigidbody.inertiaTensor = nil 
--*
--[Comment]
-- property: Boolean Rigidbody.detectCollisions	get	set	
--Should collision detection be enabled? (By default always enabled).
Rigidbody.detectCollisions = nil 
--*
--[Comment]
-- property: Vector3 Rigidbody.position	get	set	
--The position of the rigidbody.
Rigidbody.position = nil 
--*
--[Comment]
-- property: Quaternion Rigidbody.rotation	get	set	
--The rotation of the rigidbody.
Rigidbody.rotation = nil 
--*
--[Comment]
-- property: RigidbodyInterpolation Rigidbody.interpolation	get	set	
--Interpolation allows you to smooth out the effect of running physics at a fixed frame rate.
Rigidbody.interpolation = nil 
--*
--[Comment]
-- property: Int32 Rigidbody.solverIterations	get	set	
--The solverIterations determines how accurately Rigidbody joints and collision contacts are resolved. Overrides Physics.defaultSolverIterations. Must be positive.
Rigidbody.solverIterations = nil 
--*
--[Comment]
-- property: Int32 Rigidbody.solverVelocityIterations	get	set	
--The solverVelocityIterations affects how how accurately Rigidbody joints and collision contacts are resolved. Overrides Physics.defaultSolverVelocityIterations. Must be positive.
Rigidbody.solverVelocityIterations = nil 
--*
--[Comment]
-- property: Single Rigidbody.sleepThreshold	get	set	
--The mass-normalized energy threshold, below which objects start going to sleep.
Rigidbody.sleepThreshold = nil 
--*
--[Comment]
-- property: Single Rigidbody.maxAngularVelocity	get	set	
--The maximimum angular velocity of the rigidbody. (Default 7) range { 0, infinity }.
Rigidbody.maxAngularVelocity = nil 
--*
--[Comment]
-- property: Transform Rigidbody.transform	get	
--The Transform attached to this GameObject.
Rigidbody.transform = nil 
--*
--[Comment]
-- property: GameObject Rigidbody.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
Rigidbody.gameObject = nil 
--*
--[Comment]
-- property: String Rigidbody.tag	get	set	
--The tag of this game object.
Rigidbody.tag = nil 
--*
--[Comment]
-- property: String Rigidbody.name	get	set	
--The name of the object.
Rigidbody.name = nil 
--*
--[Comment]
-- property: HideFlags Rigidbody.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Rigidbody.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void SetDensity(Single density)
--Sets the mass based on the attached colliders assuming a constant density.
--*
--no static method,use ':'
function Rigidbody:SetDensity() end 

--[Comment]
--overrides:
--*
--Void AddForce(Vector3 force,ForceMode mode)
--Adds a force to the Rigidbody.
--params:
--force:    Force vector in world coordinates.
--mode:    Type of force to apply.

--*
--Void AddForce(Vector3 force)
--Adds a force to the Rigidbody.
--params:
--force:    Force vector in world coordinates.
--mode:    Type of force to apply.

--*
--Void AddForce(Single x,Single y,Single z)
--Adds a force to the Rigidbody.
--params:
--x:    Size of force along the world x-axis.
--y:    Size of force along the world y-axis.
--z:    Size of force along the world z-axis.
--mode:    Type of force to apply.

--*
--Void AddForce(Single x,Single y,Single z,ForceMode mode)
--Adds a force to the Rigidbody.
--params:
--x:    Size of force along the world x-axis.
--y:    Size of force along the world y-axis.
--z:    Size of force along the world z-axis.
--mode:    Type of force to apply.

--*
--no static method,use ':'
function Rigidbody:AddForce() end 

--[Comment]
--overrides:
--*
--Void AddRelativeForce(Vector3 force,ForceMode mode)
--Adds a force to the rigidbody relative to its coordinate system.
--params:
--force:    Force vector in local coordinates.

--*
--Void AddRelativeForce(Vector3 force)
--Adds a force to the rigidbody relative to its coordinate system.
--params:
--force:    Force vector in local coordinates.

--*
--Void AddRelativeForce(Single x,Single y,Single z)
--Adds a force to the rigidbody relative to its coordinate system.
--params:
--x:    Size of force along the local x-axis.
--y:    Size of force along the local y-axis.
--z:    Size of force along the local z-axis.

--*
--Void AddRelativeForce(Single x,Single y,Single z,ForceMode mode)
--Adds a force to the rigidbody relative to its coordinate system.
--params:
--x:    Size of force along the local x-axis.
--y:    Size of force along the local y-axis.
--z:    Size of force along the local z-axis.

--*
--no static method,use ':'
function Rigidbody:AddRelativeForce() end 

--[Comment]
--overrides:
--*
--Void AddTorque(Vector3 torque,ForceMode mode)
--Adds a torque to the rigidbody.
--params:
--torque:    Torque vector in world coordinates.

--*
--Void AddTorque(Vector3 torque)
--Adds a torque to the rigidbody.
--params:
--torque:    Torque vector in world coordinates.

--*
--Void AddTorque(Single x,Single y,Single z)
--Adds a torque to the rigidbody.
--params:
--x:    Size of torque along the world x-axis.
--y:    Size of torque along the world y-axis.
--z:    Size of torque along the world z-axis.

--*
--Void AddTorque(Single x,Single y,Single z,ForceMode mode)
--Adds a torque to the rigidbody.
--params:
--x:    Size of torque along the world x-axis.
--y:    Size of torque along the world y-axis.
--z:    Size of torque along the world z-axis.

--*
--no static method,use ':'
function Rigidbody:AddTorque() end 

--[Comment]
--overrides:
--*
--Void AddRelativeTorque(Vector3 torque,ForceMode mode)
--Adds a torque to the rigidbody relative to its coordinate system.
--params:
--torque:    Torque vector in local coordinates.

--*
--Void AddRelativeTorque(Vector3 torque)
--Adds a torque to the rigidbody relative to its coordinate system.
--params:
--torque:    Torque vector in local coordinates.

--*
--Void AddRelativeTorque(Single x,Single y,Single z)
--Adds a torque to the rigidbody relative to its coordinate system.
--params:
--x:    Size of torque along the local x-axis.
--y:    Size of torque along the local y-axis.
--z:    Size of torque along the local z-axis.

--*
--Void AddRelativeTorque(Single x,Single y,Single z,ForceMode mode)
--Adds a torque to the rigidbody relative to its coordinate system.
--params:
--x:    Size of torque along the local x-axis.
--y:    Size of torque along the local y-axis.
--z:    Size of torque along the local z-axis.

--*
--no static method,use ':'
function Rigidbody:AddRelativeTorque() end 

--[Comment]
--overrides:
--*
--Void AddForceAtPosition(Vector3 force,Vector3 position,ForceMode mode)
--Applies force at position. As a result this will apply a torque and force on the object.
--params:
--force:    Force vector in world coordinates.
--position:    Position in world coordinates.

--*
--Void AddForceAtPosition(Vector3 force,Vector3 position)
--Applies force at position. As a result this will apply a torque and force on the object.
--params:
--force:    Force vector in world coordinates.
--position:    Position in world coordinates.

--*
--no static method,use ':'
function Rigidbody:AddForceAtPosition() end 

--[Comment]
--overrides:
--*
--Void AddExplosionForce(Single explosionForce,Vector3 explosionPosition,Single explosionRadius,Single upwardsModifier,ForceMode mode)
--Applies a force to a rigidbody that simulates explosion effects.
--params:
--explosionForce:    The force of the explosion (which may be modified by distance).
--explosionPosition:    The centre of the sphere within which the explosion has its effect.
--explosionRadius:    The radius of the sphere within which the explosion has its effect.
--upwardsModifier:    Adjustment to the apparent position of the explosion to make it seem to lift objects.
--mode:    The method used to apply the force to its targets.

--*
--Void AddExplosionForce(Single explosionForce,Vector3 explosionPosition,Single explosionRadius,Single upwardsModifier)
--Applies a force to a rigidbody that simulates explosion effects.
--params:
--explosionForce:    The force of the explosion (which may be modified by distance).
--explosionPosition:    The centre of the sphere within which the explosion has its effect.
--explosionRadius:    The radius of the sphere within which the explosion has its effect.
--upwardsModifier:    Adjustment to the apparent position of the explosion to make it seem to lift objects.
--mode:    The method used to apply the force to its targets.

--*
--Void AddExplosionForce(Single explosionForce,Vector3 explosionPosition,Single explosionRadius)
--Applies a force to a rigidbody that simulates explosion effects.
--params:
--explosionForce:    The force of the explosion (which may be modified by distance).
--explosionPosition:    The centre of the sphere within which the explosion has its effect.
--explosionRadius:    The radius of the sphere within which the explosion has its effect.
--upwardsModifier:    Adjustment to the apparent position of the explosion to make it seem to lift objects.
--mode:    The method used to apply the force to its targets.

--*
--no static method,use ':'
function Rigidbody:AddExplosionForce() end 

--[Comment]
--overrides:
--*
--Vector3 ClosestPointOnBounds(Vector3 position)
--The closest point to the bounding box of the attached colliders.
--*
--no static method,use ':'
function Rigidbody:ClosestPointOnBounds() end 

--[Comment]
--overrides:
--*
--Vector3 GetRelativePointVelocity(Vector3 relativePoint)
--The velocity relative to the rigidbody at the point relativePoint.
--*
--no static method,use ':'
function Rigidbody:GetRelativePointVelocity() end 

--[Comment]
--overrides:
--*
--Vector3 GetPointVelocity(Vector3 worldPoint)
--The velocity of the rigidbody at the point worldPoint in global space.
--*
--no static method,use ':'
function Rigidbody:GetPointVelocity() end 

--[Comment]
--overrides:
--*
--Void MovePosition(Vector3 position)
--Moves the rigidbody to position.
--params:
--position:    The new position for the Rigidbody object.

--*
--no static method,use ':'
function Rigidbody:MovePosition() end 

--[Comment]
--overrides:
--*
--Void MoveRotation(Quaternion rot)
--Rotates the rigidbody to rotation.
--params:
--rot:    The new rotation for the Rigidbody.

--*
--no static method,use ':'
function Rigidbody:MoveRotation() end 

--[Comment]
--overrides:
--*
--Void Sleep()
--Forces a rigidbody to sleep at least one frame.
--*
--no static method,use ':'
function Rigidbody:Sleep() end 

--[Comment]
--overrides:
--*
--Boolean IsSleeping()
--Is the rigidbody sleeping?
--*
--no static method,use ':'
function Rigidbody:IsSleeping() end 

--[Comment]
--overrides:
--*
--Void WakeUp()
--Forces a rigidbody to wake up.
--*
--no static method,use ':'
function Rigidbody:WakeUp() end 

--[Comment]
--overrides:
--*
--Void ResetCenterOfMass()
--Reset the center of mass of the rigidbody.
--*
--no static method,use ':'
function Rigidbody:ResetCenterOfMass() end 

--[Comment]
--overrides:
--*
--Void ResetInertiaTensor()
--Reset the inertia tensor value and rotation.
--*
--no static method,use ':'
function Rigidbody:ResetInertiaTensor() end 

--[Comment]
--overrides:
--*
--Boolean SweepTest(Vector3 direction,RaycastHit& hitInfo,Single maxDistance,QueryTriggerInteraction queryTriggerInteraction)
--Tests if a rigidbody would collide with anything, if it was moved through the scene.
--params:
--direction:    The direction into which to sweep the rigidbody.
--hitInfo:    If true is returned, hitInfo will contain more information about where the collider was hit (See Also: RaycastHit).
--maxDistance:    The length of the sweep.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Boolean SweepTest(Vector3 direction,RaycastHit& hitInfo,Single maxDistance)
--*
--Boolean SweepTest(Vector3 direction,RaycastHit& hitInfo)
--*
--no static method,use ':'
function Rigidbody:SweepTest() end 

--[Comment]
--overrides:
--*
--RaycastHit[] SweepTestAll(Vector3 direction,Single maxDistance,QueryTriggerInteraction queryTriggerInteraction)
--Like Rigidbody.SweepTest, but returns all hits.
--params:
--direction:    The direction into which to sweep the rigidbody.
--maxDistance:    The length of the sweep.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--RaycastHit[] SweepTestAll(Vector3 direction,Single maxDistance)
--*
--RaycastHit[] SweepTestAll(Vector3 direction)
--*
--no static method,use ':'
function Rigidbody:SweepTestAll() end 

Camera = {} 
--*
--[Comment]
--consturctor for Camera overrides:
--*
--Camera.New()
--*

function Camera.New() end
--*
--[Comment]
-- property: Single Camera.fieldOfView	get	set	
--The field of view of the camera in degrees.
Camera.fieldOfView = nil 
--*
--[Comment]
-- property: Single Camera.nearClipPlane	get	set	
--The near clipping plane distance.
Camera.nearClipPlane = nil 
--*
--[Comment]
-- property: Single Camera.farClipPlane	get	set	
--The far clipping plane distance.
Camera.farClipPlane = nil 
--*
--[Comment]
-- property: RenderingPath Camera.renderingPath	get	set	
--The rendering path that should be used, if possible.
Camera.renderingPath = nil 
--*
--[Comment]
-- property: RenderingPath Camera.actualRenderingPath	get	
--The rendering path that is currently being used (Read Only).
Camera.actualRenderingPath = nil 
--*
--[Comment]
-- property: Boolean Camera.hdr	get	set	
--High dynamic range rendering.
Camera.hdr = nil 
--*
--[Comment]
-- property: Single Camera.orthographicSize	get	set	
--Camera's half-size when in orthographic mode.
Camera.orthographicSize = nil 
--*
--[Comment]
-- property: Boolean Camera.orthographic	get	set	
--Is the camera orthographic (true) or perspective (false)?
Camera.orthographic = nil 
--*
--[Comment]
-- property: OpaqueSortMode Camera.opaqueSortMode	get	set	
--Opaque object sorting mode.
Camera.opaqueSortMode = nil 
--*
--[Comment]
-- property: TransparencySortMode Camera.transparencySortMode	get	set	
--Transparent object sorting mode.
Camera.transparencySortMode = nil 
--*
--[Comment]
-- property: Single Camera.depth	get	set	
--Camera's depth in the camera rendering order.
Camera.depth = nil 
--*
--[Comment]
-- property: Single Camera.aspect	get	set	
--The aspect ratio (width divided by height).
Camera.aspect = nil 
--*
--[Comment]
-- property: Int32 Camera.cullingMask	get	set	
--This is used to render parts of the scene selectively.
Camera.cullingMask = nil 
--*
--[Comment]
-- property: Int32 Camera.eventMask	get	set	
--Mask to select which layers can trigger events on the camera.
Camera.eventMask = nil 
--*
--[Comment]
-- property: Color Camera.backgroundColor	get	set	
--The color with which the screen will be cleared.
Camera.backgroundColor = nil 
--*
--[Comment]
-- property: Rect Camera.rect	get	set	
--Where on the screen is the camera rendered in normalized coordinates.
Camera.rect = nil 
--*
--[Comment]
-- property: Rect Camera.pixelRect	get	set	
--Where on the screen is the camera rendered in pixel coordinates.
Camera.pixelRect = nil 
--*
--[Comment]
-- property: RenderTexture Camera.targetTexture	get	set	
--Destination render texture.
Camera.targetTexture = nil 
--*
--[Comment]
-- property: Int32 Camera.pixelWidth	get	
--How wide is the camera in pixels (Read Only).
Camera.pixelWidth = nil 
--*
--[Comment]
-- property: Int32 Camera.pixelHeight	get	
--How tall is the camera in pixels (Read Only).
Camera.pixelHeight = nil 
--*
--[Comment]
-- property: Matrix4x4 Camera.cameraToWorldMatrix	get	
--Matrix that transforms from camera space to world space (Read Only).
Camera.cameraToWorldMatrix = nil 
--*
--[Comment]
-- property: Matrix4x4 Camera.worldToCameraMatrix	get	set	
--Matrix that transforms from world to camera space.
Camera.worldToCameraMatrix = nil 
--*
--[Comment]
-- property: Matrix4x4 Camera.projectionMatrix	get	set	
--Set a custom projection matrix.
Camera.projectionMatrix = nil 
--*
--[Comment]
-- property: Matrix4x4 Camera.nonJitteredProjectionMatrix	get	set	
--Get or set the raw projection matrix with no camera offset (no jittering).
Camera.nonJitteredProjectionMatrix = nil 
--*
--[Comment]
-- property: Boolean Camera.useJitteredProjectionMatrixForTransparentRendering	get	set	
--Should the jittered matrix be used for transparency rendering?
Camera.useJitteredProjectionMatrixForTransparentRendering = nil 
--*
--[Comment]
-- property: Vector3 Camera.velocity	get	
--Get the world-space speed of the camera (Read Only).
Camera.velocity = nil 
--*
--[Comment]
-- property: CameraClearFlags Camera.clearFlags	get	set	
--How the camera clears the background.
Camera.clearFlags = nil 
--*
--[Comment]
-- property: Boolean Camera.stereoEnabled	get	
--Stereoscopic rendering.
Camera.stereoEnabled = nil 
--*
--[Comment]
-- property: Single Camera.stereoSeparation	get	set	
--Distance between the virtual eyes.
Camera.stereoSeparation = nil 
--*
--[Comment]
-- property: Single Camera.stereoConvergence	get	set	
--Distance to a point where virtual eyes converge.
Camera.stereoConvergence = nil 
--*
--[Comment]
-- property: CameraType Camera.cameraType	get	set	
--Identifies what kind of camera this is.
Camera.cameraType = nil 
--*
--[Comment]
-- property: Boolean Camera.stereoMirrorMode	get	set	
--Render only once and use resulting image for both eyes.
Camera.stereoMirrorMode = nil 
--*
--[Comment]
-- property: StereoTargetEyeMask Camera.stereoTargetEye	get	set	
--Defines which eye of a VR display the Camera renders into.
Camera.stereoTargetEye = nil 
--*
--[Comment]
-- property: MonoOrStereoscopicEye Camera.stereoActiveEye	get	
--Returns the eye that is currently rendering. If called when stereo is not enabled it will return Camera.MonoOrStereoscopicEye.Mono.  If called during a camera rendering callback such as OnRenderImage it will return the currently rendering eye.  If called outside of a rendering callback and stereo is enabled, it will return the default eye which is Camera.MonoOrStereoscopicEye.Left.
Camera.stereoActiveEye = nil 
--*
--[Comment]
-- property: Int32 Camera.targetDisplay	get	set	
--Set the target display for this Camera.
Camera.targetDisplay = nil 
--*
--[Comment]
-- property: Camera Camera.main	get	
--The first enabled camera tagged "MainCamera" (Read Only).
Camera.main = nil 
--*
--[Comment]
-- property: Camera Camera.current	get	
--The camera we are currently rendering with, for low-level render control only (Read Only).
Camera.current = nil 
--*
--[Comment]
-- property: Camera[] Camera.allCameras	get	
--Returns all enabled cameras in the scene.
Camera.allCameras = nil 
--*
--[Comment]
-- property: Int32 Camera.allCamerasCount	get	
--The number of cameras in the current scene.
Camera.allCamerasCount = nil 
--*
--[Comment]
-- property: Boolean Camera.useOcclusionCulling	get	set	
--Whether or not the Camera will use occlusion culling during rendering.
Camera.useOcclusionCulling = nil 
--*
--[Comment]
-- property: Matrix4x4 Camera.cullingMatrix	get	set	
--Sets a custom matrix for the camera to use for all culling queries.
Camera.cullingMatrix = nil 
--*
--[Comment]
-- property: Single[] Camera.layerCullDistances	get	set	
--Per-layer culling distances.
Camera.layerCullDistances = nil 
--*
--[Comment]
-- property: Boolean Camera.layerCullSpherical	get	set	
--How to perform per-layer culling for a Camera.
Camera.layerCullSpherical = nil 
--*
--[Comment]
-- property: DepthTextureMode Camera.depthTextureMode	get	set	
--How and if camera generates a depth texture.
Camera.depthTextureMode = nil 
--*
--[Comment]
-- property: Boolean Camera.clearStencilAfterLightingPass	get	set	
--Should the camera clear the stencil buffer after the deferred light pass?
Camera.clearStencilAfterLightingPass = nil 
--*
--[Comment]
-- property: Int32 Camera.commandBufferCount	get	
--Number of command buffers set up on this camera (Read Only).
Camera.commandBufferCount = nil 
--*
--[Comment]
-- property: Boolean Camera.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
Camera.enabled = nil 
--*
--[Comment]
-- property: Boolean Camera.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
Camera.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform Camera.transform	get	
--The Transform attached to this GameObject.
Camera.transform = nil 
--*
--[Comment]
-- property: GameObject Camera.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
Camera.gameObject = nil 
--*
--[Comment]
-- property: String Camera.tag	get	set	
--The tag of this game object.
Camera.tag = nil 
--*
--[Comment]
-- property: String Camera.name	get	set	
--The name of the object.
Camera.name = nil 
--*
--[Comment]
-- property: HideFlags Camera.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Camera.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void SetTargetBuffers(RenderBuffer colorBuffer,RenderBuffer depthBuffer)
--Sets the Camera to render to the chosen buffers of one or more RenderTextures.
--params:
--colorBuffer:    The RenderBuffer(s) to which color information will be rendered.
--depthBuffer:    The RenderBuffer to which depth information will be rendered.

--*
--Void SetTargetBuffers(RenderBuffer[] colorBuffer,RenderBuffer depthBuffer)
--Sets the Camera to render to the chosen buffers of one or more RenderTextures.
--params:
--colorBuffer:    The RenderBuffer(s) to which color information will be rendered.
--depthBuffer:    The RenderBuffer to which depth information will be rendered.

--*
--no static method,use ':'
function Camera:SetTargetBuffers() end 

--[Comment]
--overrides:
--*
--Void ResetWorldToCameraMatrix()
--Make the rendering position reflect the camera's position in the scene.
--*
--no static method,use ':'
function Camera:ResetWorldToCameraMatrix() end 

--[Comment]
--overrides:
--*
--Void ResetProjectionMatrix()
--Make the projection reflect normal camera's parameters.
--*
--no static method,use ':'
function Camera:ResetProjectionMatrix() end 

--[Comment]
--overrides:
--*
--Void ResetAspect()
--Revert the aspect ratio to the screen's aspect ratio.
--*
--no static method,use ':'
function Camera:ResetAspect() end 

--[Comment]
--overrides:
--*
--Void ResetFieldOfView()
--Reset to the default field of view.
--*
--no static method,use ':'
function Camera:ResetFieldOfView() end 

--[Comment]
--overrides:
--*
--Matrix4x4 GetStereoViewMatrix(StereoscopicEye eye)
--*
--no static method,use ':'
function Camera:GetStereoViewMatrix() end 

--[Comment]
--overrides:
--*
--Void SetStereoViewMatrix(StereoscopicEye eye,Matrix4x4 matrix)
--*
--no static method,use ':'
function Camera:SetStereoViewMatrix() end 

--[Comment]
--overrides:
--*
--Void ResetStereoViewMatrices()
--Use the default view matrix for both stereo eye. Only work in 3D flat panel display.
--*
--no static method,use ':'
function Camera:ResetStereoViewMatrices() end 

--[Comment]
--overrides:
--*
--Matrix4x4 GetStereoProjectionMatrix(StereoscopicEye eye)
--*
--no static method,use ':'
function Camera:GetStereoProjectionMatrix() end 

--[Comment]
--overrides:
--*
--Void SetStereoProjectionMatrix(StereoscopicEye eye,Matrix4x4 matrix)
--*
--no static method,use ':'
function Camera:SetStereoProjectionMatrix() end 

--[Comment]
--overrides:
--*
--Void CalculateFrustumCorners(Rect viewport,Single z,MonoOrStereoscopicEye eye,Vector3[] outCorners)
--*
--no static method,use ':'
function Camera:CalculateFrustumCorners() end 

--[Comment]
--overrides:
--*
--Void ResetStereoProjectionMatrices()
--Use the default projection matrix for both stereo eye. Only work in 3D flat panel display.
--*
--no static method,use ':'
function Camera:ResetStereoProjectionMatrices() end 

--[Comment]
--overrides:
--*
--Vector3 WorldToScreenPoint(Vector3 position)
--Transforms position from world space into screen space.
--*
--no static method,use ':'
function Camera:WorldToScreenPoint() end 

--[Comment]
--overrides:
--*
--Vector3 WorldToViewportPoint(Vector3 position)
--Transforms position from world space into viewport space.
--*
--no static method,use ':'
function Camera:WorldToViewportPoint() end 

--[Comment]
--overrides:
--*
--Vector3 ViewportToWorldPoint(Vector3 position)
--Transforms position from viewport space into world space.
--params:
--position:    The 3d vector in Viewport space.

--*
--no static method,use ':'
function Camera:ViewportToWorldPoint() end 

--[Comment]
--overrides:
--*
--Vector3 ScreenToWorldPoint(Vector3 position)
--Transforms position from screen space into world space.
--*
--no static method,use ':'
function Camera:ScreenToWorldPoint() end 

--[Comment]
--overrides:
--*
--Vector3 ScreenToViewportPoint(Vector3 position)
--Transforms position from screen space into viewport space.
--*
--no static method,use ':'
function Camera:ScreenToViewportPoint() end 

--[Comment]
--overrides:
--*
--Vector3 ViewportToScreenPoint(Vector3 position)
--Transforms position from viewport space into screen space.
--*
--no static method,use ':'
function Camera:ViewportToScreenPoint() end 

--[Comment]
--overrides:
--*
--Ray ViewportPointToRay(Vector3 position)
--Returns a ray going from camera through a viewport point.
--*
--no static method,use ':'
function Camera:ViewportPointToRay() end 

--[Comment]
--overrides:
--*
--Ray ScreenPointToRay(Vector3 position)
--Returns a ray going from camera through a screen point.
--*
--no static method,use ':'
function Camera:ScreenPointToRay() end 

--[Comment]
--overrides:
--*
--Int32 GetAllCameras(Camera[] cameras)
--Fills an array of Camera with the current cameras in the scene, without allocating a new array.
--params:
--cameras:    An array to be filled up with cameras currently in the scene.

--*
--static method,use '.'
function Camera.GetAllCameras() end 

--[Comment]
--overrides:
--*
--Void Render()
--Render the camera manually.
--*
--no static method,use ':'
function Camera:Render() end 

--[Comment]
--overrides:
--*
--Void RenderWithShader(Shader shader,String replacementTag)
--Render the camera with shader replacement.
--*
--no static method,use ':'
function Camera:RenderWithShader() end 

--[Comment]
--overrides:
--*
--Void SetReplacementShader(Shader shader,String replacementTag)
--Make the camera render with shader replacement.
--*
--no static method,use ':'
function Camera:SetReplacementShader() end 

--[Comment]
--overrides:
--*
--Void ResetReplacementShader()
--Remove shader replacement from camera.
--*
--no static method,use ':'
function Camera:ResetReplacementShader() end 

--[Comment]
--overrides:
--*
--Void ResetCullingMatrix()
--Make culling queries reflect the camera's built in parameters.
--*
--no static method,use ':'
function Camera:ResetCullingMatrix() end 

--[Comment]
--overrides:
--*
--Void RenderDontRestore()
--*
--no static method,use ':'
function Camera:RenderDontRestore() end 

--[Comment]
--overrides:
--*
--Void SetupCurrent(Camera cur)
--*
--static method,use '.'
function Camera.SetupCurrent() end 

--[Comment]
--overrides:
--*
--Boolean RenderToCubemap(Cubemap cubemap)
--*
--Boolean RenderToCubemap(Cubemap cubemap,Int32 faceMask)
--Render into a static cubemap from this camera.
--params:
--cubemap:    The cube map to render to.
--faceMask:    A bitmask which determines which of the six faces are rendered to.

--*
--Boolean RenderToCubemap(RenderTexture cubemap)
--*
--Boolean RenderToCubemap(RenderTexture cubemap,Int32 faceMask)
--Render into a cubemap from this camera.
--params:
--faceMask:    A bitfield indicating which cubemap faces should be rendered into.
--cubemap:    The texture to render to.

--*
--no static method,use ':'
function Camera:RenderToCubemap() end 

--[Comment]
--overrides:
--*
--Void CopyFrom(Camera other)
--Makes this camera's settings match other camera.
--*
--no static method,use ':'
function Camera:CopyFrom() end 

--[Comment]
--overrides:
--*
--Void AddCommandBuffer(CameraEvent evt,CommandBuffer buffer)
--Add a command buffer to be executed at a specified place.
--params:
--evt:    When to execute the command buffer during rendering.
--buffer:    The buffer to execute.

--*
--no static method,use ':'
function Camera:AddCommandBuffer() end 

--[Comment]
--overrides:
--*
--Void RemoveCommandBuffer(CameraEvent evt,CommandBuffer buffer)
--Remove command buffer from execution at a specified place.
--params:
--evt:    When to execute the command buffer during rendering.
--buffer:    The buffer to execute.

--*
--no static method,use ':'
function Camera:RemoveCommandBuffer() end 

--[Comment]
--overrides:
--*
--Void RemoveCommandBuffers(CameraEvent evt)
--Remove command buffers from execution at a specified place.
--params:
--evt:    When to execute the command buffer during rendering.

--*
--no static method,use ':'
function Camera:RemoveCommandBuffers() end 

--[Comment]
--overrides:
--*
--Void RemoveAllCommandBuffers()
--Remove all command buffers set on this camera.
--*
--no static method,use ':'
function Camera:RemoveAllCommandBuffers() end 

--[Comment]
--overrides:
--*
--CommandBuffer[] GetCommandBuffers(CameraEvent evt)
--Get command buffers to be executed at a specified place.
--params:
--evt:    When to execute the command buffer during rendering.

--*
--no static method,use ':'
function Camera:GetCommandBuffers() end 

--[Comment]
--overrides:
--*
--Matrix4x4 CalculateObliqueMatrix(Vector4 clipPlane)
--Calculates and returns oblique near-plane projection matrix.
--params:
--clipPlane:    Vector4 that describes a clip plane.

--*
--no static method,use ':'
function Camera:CalculateObliqueMatrix() end 

AudioSource = {} 
--*
--[Comment]
--consturctor for AudioSource overrides:
--*
--AudioSource.New()
--*

function AudioSource.New() end
--*
--[Comment]
-- property: Single AudioSource.volume	get	set	
--The volume of the audio source (0.0 to 1.0).
AudioSource.volume = nil 
--*
--[Comment]
-- property: Single AudioSource.pitch	get	set	
--The pitch of the audio source.
AudioSource.pitch = nil 
--*
--[Comment]
-- property: Single AudioSource.time	get	set	
--Playback position in seconds.
AudioSource.time = nil 
--*
--[Comment]
-- property: Int32 AudioSource.timeSamples	get	set	
--Playback position in PCM samples.
AudioSource.timeSamples = nil 
--*
--[Comment]
-- property: AudioClip AudioSource.clip	get	set	
--The default AudioClip to play.
AudioSource.clip = nil 
--*
--[Comment]
-- property: AudioMixerGroup AudioSource.outputAudioMixerGroup	get	set	
--The target group to which the AudioSource should route its signal.
AudioSource.outputAudioMixerGroup = nil 
--*
--[Comment]
-- property: Boolean AudioSource.isPlaying	get	
--Is the clip playing right now (Read Only)?
AudioSource.isPlaying = nil 
--*
--[Comment]
-- property: Boolean AudioSource.isVirtual	get	
--True if all sounds played by the AudioSource (main sound started by Play() or playOnAwake as well as one-shots) are culled by the audio system.
AudioSource.isVirtual = nil 
--*
--[Comment]
-- property: Boolean AudioSource.loop	get	set	
--Is the audio clip looping?
AudioSource.loop = nil 
--*
--[Comment]
-- property: Boolean AudioSource.ignoreListenerVolume	get	set	
--This makes the audio source not take into account the volume of the audio listener.
AudioSource.ignoreListenerVolume = nil 
--*
--[Comment]
-- property: Boolean AudioSource.playOnAwake	get	set	
--If set to true, the audio source will automatically start playing on awake.
AudioSource.playOnAwake = nil 
--*
--[Comment]
-- property: Boolean AudioSource.ignoreListenerPause	get	set	
--Allows AudioSource to play even though AudioListener.pause is set to true. This is useful for the menu element sounds or background music in pause menus.
AudioSource.ignoreListenerPause = nil 
--*
--[Comment]
-- property: AudioVelocityUpdateMode AudioSource.velocityUpdateMode	get	set	
--Whether the Audio Source should be updated in the fixed or dynamic update.
AudioSource.velocityUpdateMode = nil 
--*
--[Comment]
-- property: Single AudioSource.panStereo	get	set	
--Pans a playing sound in a stereo way (left or right). This only applies to sounds that are Mono or Stereo.
AudioSource.panStereo = nil 
--*
--[Comment]
-- property: Single AudioSource.spatialBlend	get	set	
--Sets how much this AudioSource is affected by 3D spatialisation calculations (attenuation, doppler etc). 0.0 makes the sound full 2D, 1.0 makes it full 3D.
AudioSource.spatialBlend = nil 
--*
--[Comment]
-- property: Boolean AudioSource.spatialize	get	set	
--Enables or disables spatialization.
AudioSource.spatialize = nil 
--*
--[Comment]
-- property: Boolean AudioSource.spatializePostEffects	get	set	
--Determines if the spatializer effect is inserted before or after the effect filters.
AudioSource.spatializePostEffects = nil 
--*
--[Comment]
-- property: Single AudioSource.reverbZoneMix	get	set	
--The amount by which the signal from the AudioSource will be mixed into the global reverb associated with the Reverb Zones.
AudioSource.reverbZoneMix = nil 
--*
--[Comment]
-- property: Boolean AudioSource.bypassEffects	get	set	
--Bypass effects (Applied from filter components or global listener filters).
AudioSource.bypassEffects = nil 
--*
--[Comment]
-- property: Boolean AudioSource.bypassListenerEffects	get	set	
--When set global effects on the AudioListener will not be applied to the audio signal generated by the AudioSource. Does not apply if the AudioSource is playing into a mixer group.
AudioSource.bypassListenerEffects = nil 
--*
--[Comment]
-- property: Boolean AudioSource.bypassReverbZones	get	set	
--When set doesn't route the signal from an AudioSource into the global reverb associated with reverb zones.
AudioSource.bypassReverbZones = nil 
--*
--[Comment]
-- property: Single AudioSource.dopplerLevel	get	set	
--Sets the Doppler scale for this AudioSource.
AudioSource.dopplerLevel = nil 
--*
--[Comment]
-- property: Single AudioSource.spread	get	set	
--Sets the spread angle (in degrees) of a 3d stereo or multichannel sound in speaker space.
AudioSource.spread = nil 
--*
--[Comment]
-- property: Int32 AudioSource.priority	get	set	
--Sets the priority of the AudioSource.
AudioSource.priority = nil 
--*
--[Comment]
-- property: Boolean AudioSource.mute	get	set	
--Un- / Mutes the AudioSource. Mute sets the volume=0, Un-Mute restore the original volume.
AudioSource.mute = nil 
--*
--[Comment]
-- property: Single AudioSource.minDistance	get	set	
--Within the Min distance the AudioSource will cease to grow louder in volume.
AudioSource.minDistance = nil 
--*
--[Comment]
-- property: Single AudioSource.maxDistance	get	set	
--(Logarithmic rolloff) MaxDistance is the distance a sound stops attenuating at.
AudioSource.maxDistance = nil 
--*
--[Comment]
-- property: AudioRolloffMode AudioSource.rolloffMode	get	set	
--Sets/Gets how the AudioSource attenuates over distance.
AudioSource.rolloffMode = nil 
--*
--[Comment]
-- property: Boolean AudioSource.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
AudioSource.enabled = nil 
--*
--[Comment]
-- property: Boolean AudioSource.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
AudioSource.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform AudioSource.transform	get	
--The Transform attached to this GameObject.
AudioSource.transform = nil 
--*
--[Comment]
-- property: GameObject AudioSource.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
AudioSource.gameObject = nil 
--*
--[Comment]
-- property: String AudioSource.tag	get	set	
--The tag of this game object.
AudioSource.tag = nil 
--*
--[Comment]
-- property: String AudioSource.name	get	set	
--The name of the object.
AudioSource.name = nil 
--*
--[Comment]
-- property: HideFlags AudioSource.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
AudioSource.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void Play(UInt64 delay)
--Plays the clip with an optional certain delay.
--params:
--delay:    Delay in number of samples, assuming a 44100Hz sample rate (meaning that Play(44100) will delay the playing by exactly 1 sec).

--*
--Void Play()
--*
--no static method,use ':'
function AudioSource:Play() end 

--[Comment]
--overrides:
--*
--Void PlayDelayed(Single delay)
--Plays the clip with a delay specified in seconds. Users are advised to use this function instead of the old Play(delay) function that took a delay specified in samples relative to a reference rate of 44.1 kHz as an argument.
--params:
--delay:    Delay time specified in seconds.

--*
--no static method,use ':'
function AudioSource:PlayDelayed() end 

--[Comment]
--overrides:
--*
--Void PlayScheduled(Double time)
--Plays the clip at a specific time on the absolute time-line that AudioSettings.dspTime reads from.
--params:
--time:    Time in seconds on the absolute time-line that AudioSettings.dspTime refers to for when the sound should start playing.

--*
--no static method,use ':'
function AudioSource:PlayScheduled() end 

--[Comment]
--overrides:
--*
--Void SetScheduledStartTime(Double time)
--Changes the time at which a sound that has already been scheduled to play will start.
--params:
--time:    Time in seconds.

--*
--no static method,use ':'
function AudioSource:SetScheduledStartTime() end 

--[Comment]
--overrides:
--*
--Void SetScheduledEndTime(Double time)
--Changes the time at which a sound that has already been scheduled to play will end. Notice that depending on the timing not all rescheduling requests can be fulfilled.
--params:
--time:    Time in seconds.

--*
--no static method,use ':'
function AudioSource:SetScheduledEndTime() end 

--[Comment]
--overrides:
--*
--Void Stop()
--Stops playing the clip.
--*
--no static method,use ':'
function AudioSource:Stop() end 

--[Comment]
--overrides:
--*
--Void Pause()
--Pauses playing the clip.
--*
--no static method,use ':'
function AudioSource:Pause() end 

--[Comment]
--overrides:
--*
--Void UnPause()
--Unpause the paused playback of this AudioSource.
--*
--no static method,use ':'
function AudioSource:UnPause() end 

--[Comment]
--overrides:
--*
--Void PlayOneShot(AudioClip clip,Single volumeScale)
--Plays an AudioClip, and scales the AudioSource volume by volumeScale.
--params:
--clip:    The clip being played.
--volumeScale:    The scale of the volume (0-1).

--*
--Void PlayOneShot(AudioClip clip)
--Plays an AudioClip, and scales the AudioSource volume by volumeScale.
--params:
--clip:    The clip being played.
--volumeScale:    The scale of the volume (0-1).

--*
--no static method,use ':'
function AudioSource:PlayOneShot() end 

--[Comment]
--overrides:
--*
--Void PlayClipAtPoint(AudioClip clip,Vector3 position)
--Plays an AudioClip at a given position in world space.
--params:
--clip:    Audio data to play.
--position:    Position in world space from which sound originates.
--volume:    Playback volume.

--*
--Void PlayClipAtPoint(AudioClip clip,Vector3 position,Single volume)
--Plays an AudioClip at a given position in world space.
--params:
--clip:    Audio data to play.
--position:    Position in world space from which sound originates.
--volume:    Playback volume.

--*
--static method,use '.'
function AudioSource.PlayClipAtPoint() end 

--[Comment]
--overrides:
--*
--Void SetCustomCurve(AudioSourceCurveType type,AnimationCurve curve)
--Set the custom curve for the given AudioSourceCurveType.
--params:
--type:    The curve type that should be set.
--curve:    The curve that should be applied to the given curve type.

--*
--no static method,use ':'
function AudioSource:SetCustomCurve() end 

--[Comment]
--overrides:
--*
--AnimationCurve GetCustomCurve(AudioSourceCurveType type)
--Get the current custom curve for the given AudioSourceCurveType.
--params:
--type:    The curve type to get.

--*
--no static method,use ':'
function AudioSource:GetCustomCurve() end 

--[Comment]
--overrides:
--*
--Void GetOutputData(Single[] samples,Int32 channel)
--Provides a block of the currently playing source's output data.
--params:
--samples:    The array to populate with audio samples. Its length must be a power of 2.
--channel:    The channel to sample from.

--*
--no static method,use ':'
function AudioSource:GetOutputData() end 

--[Comment]
--overrides:
--*
--Void GetSpectrumData(Single[] samples,Int32 channel,FFTWindow window)
--Provides a block of the currently playing audio source's spectrum data.
--params:
--samples:    The array to populate with audio samples. Its length must be a power of 2.
--channel:    The channel to sample from.
--window:    The FFTWindow type to use when sampling.

--*
--no static method,use ':'
function AudioSource:GetSpectrumData() end 

--[Comment]
--overrides:
--*
--Boolean SetSpatializerFloat(Int32 index,Single value)
--Sets a user-defined parameter of a custom spatializer effect that is attached to an AudioSource.
--params:
--index:    Zero-based index of user-defined parameter to be set.
--value:    New value of the user-defined parameter.

--*
--no static method,use ':'
function AudioSource:SetSpatializerFloat() end 

--[Comment]
--overrides:
--*
--Boolean GetSpatializerFloat(Int32 index,Single& value)
--Reads a user-defined parameter of a custom spatializer effect that is attached to an AudioSource.
--params:
--index:    Zero-based index of user-defined parameter to be read.
--value:    Return value of the user-defined parameter that is read.

--*
--no static method,use ':'
function AudioSource:GetSpatializerFloat() end 

Behaviour = {} 
--*
--[Comment]
--consturctor for Behaviour overrides:
--*
--Behaviour.New()
--*

function Behaviour.New() end
--*
--[Comment]
-- property: Boolean Behaviour.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
Behaviour.enabled = nil 
--*
--[Comment]
-- property: Boolean Behaviour.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
Behaviour.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform Behaviour.transform	get	
--The Transform attached to this GameObject.
Behaviour.transform = nil 
--*
--[Comment]
-- property: GameObject Behaviour.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
Behaviour.gameObject = nil 
--*
--[Comment]
-- property: String Behaviour.tag	get	set	
--The tag of this game object.
Behaviour.tag = nil 
--*
--[Comment]
-- property: String Behaviour.name	get	set	
--The name of the object.
Behaviour.name = nil 
--*
--[Comment]
-- property: HideFlags Behaviour.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Behaviour.hideFlags = nil 
--*
MonoBehaviour = {} 
--*
--[Comment]
--consturctor for MonoBehaviour overrides:
--*
--MonoBehaviour.New()
--*

function MonoBehaviour.New() end
--*
--[Comment]
-- property: Boolean MonoBehaviour.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
MonoBehaviour.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean MonoBehaviour.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
MonoBehaviour.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean MonoBehaviour.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
MonoBehaviour.enabled = nil 
--*
--[Comment]
-- property: Boolean MonoBehaviour.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
MonoBehaviour.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform MonoBehaviour.transform	get	
--The Transform attached to this GameObject.
MonoBehaviour.transform = nil 
--*
--[Comment]
-- property: GameObject MonoBehaviour.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
MonoBehaviour.gameObject = nil 
--*
--[Comment]
-- property: String MonoBehaviour.tag	get	set	
--The tag of this game object.
MonoBehaviour.tag = nil 
--*
--[Comment]
-- property: String MonoBehaviour.name	get	set	
--The name of the object.
MonoBehaviour.name = nil 
--*
--[Comment]
-- property: HideFlags MonoBehaviour.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
MonoBehaviour.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void Invoke(String methodName,Single time)
--Invokes the method methodName in time seconds.
--*
--no static method,use ':'
function MonoBehaviour:Invoke() end 

--[Comment]
--overrides:
--*
--Void InvokeRepeating(String methodName,Single time,Single repeatRate)
--Invokes the method methodName in time seconds, then repeatedly every repeatRate seconds.
--*
--no static method,use ':'
function MonoBehaviour:InvokeRepeating() end 

--[Comment]
--overrides:
--*
--Void CancelInvoke()
--Cancels all Invoke calls on this MonoBehaviour.
--*
--Void CancelInvoke(String methodName)
--Cancels all Invoke calls with name methodName on this behaviour.
--*
--no static method,use ':'
function MonoBehaviour:CancelInvoke() end 

--[Comment]
--overrides:
--*
--Boolean IsInvoking(String methodName)
--Is any invoke on methodName pending?
--*
--Boolean IsInvoking()
--Is any invoke pending on this MonoBehaviour?
--*
--no static method,use ':'
function MonoBehaviour:IsInvoking() end 

--[Comment]
--overrides:
--*
--Coroutine StartCoroutine(IEnumerator routine)
--Starts a coroutine.
--*
--Coroutine StartCoroutine(String methodName,Object value)
--Starts a coroutine named methodName.
--*
--Coroutine StartCoroutine(String methodName)
--Starts a coroutine named methodName.
--*
--no static method,use ':'
function MonoBehaviour:StartCoroutine() end 

--[Comment]
--overrides:
--*
--Void StopCoroutine(String methodName)
--Stops the first coroutine named methodName, or the coroutine stored in routine running on this behaviour.
--params:
--methodName:    Name of coroutine.
--routine:    Name of the function in code.

--*
--Void StopCoroutine(IEnumerator routine)
--Stops the first coroutine named methodName, or the coroutine stored in routine running on this behaviour.
--params:
--methodName:    Name of coroutine.
--routine:    Name of the function in code.

--*
--Void StopCoroutine(Coroutine routine)
--*
--no static method,use ':'
function MonoBehaviour:StopCoroutine() end 

--[Comment]
--overrides:
--*
--Void StopAllCoroutines()
--Stops all coroutines running on this behaviour.
--*
--no static method,use ':'
function MonoBehaviour:StopAllCoroutines() end 

--[Comment]
--overrides:
--*
--Void print(Object message)
--Logs message to the Unity Console (identical to Debug.Log).
--*
--static method,use '.'
function MonoBehaviour.print() end 

---@class GameObject
GameObject = {} 
--*
--[Comment]
--consturctor for GameObject overrides:
--*
--GameObject.New(String name)
--Creates a new game object, named name.
--params:
--name:    The name that the GameObject is created with.
--components:    A list of Components to add to the GameObject on creation.

--*

--GameObject.New()
--Creates a new game object, named name.
--params:
--name:    The name that the GameObject is created with.
--components:    A list of Components to add to the GameObject on creation.

--*

--GameObject.New(String name,Type[] components)
--Creates a new game object, named name.
--params:
--name:    The name that the GameObject is created with.
--components:    A list of Components to add to the GameObject on creation.

--*

function GameObject.New() end
--*
--[Comment]
-- property: Transform GameObject.transform	get	
--The Transform attached to this GameObject.
GameObject.transform = nil 
--*
--[Comment]
-- property: Int32 GameObject.layer	get	set	
--The layer the game object is in. A layer is in the range [0...31].
GameObject.layer = nil 
--*
--[Comment]
-- property: Boolean GameObject.activeSelf	get	
--The local active state of this GameObject. (Read Only)
GameObject.activeSelf = nil 
--*
--[Comment]
-- property: Boolean GameObject.activeInHierarchy	get	
--Is the GameObject active in the scene?
GameObject.activeInHierarchy = nil 
--*
--[Comment]
-- property: Boolean GameObject.isStatic	get	set	
--Editor only API that specifies if a game object is static.
GameObject.isStatic = nil 
--*
--[Comment]
-- property: String GameObject.tag	get	set	
--The tag of this game object.
GameObject.tag = nil 
--*
--[Comment]
-- property: Scene GameObject.scene	get	
--Scene that the GameObject is part of.
GameObject.scene = nil 
--*
--[Comment]
-- property: GameObject GameObject.gameObject	get	
GameObject.gameObject = nil 
--*
--[Comment]
-- property: String GameObject.name	get	set	
--The name of the object.
GameObject.name = nil 
--*
--[Comment]
-- property: HideFlags GameObject.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
GameObject.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--GameObject CreatePrimitive(PrimitiveType type)
--Creates a game object with a primitive mesh renderer and appropriate collider.
--params:
--type:    The type of primitive object to create.

--*
--static method,use '.'
function GameObject.CreatePrimitive() end 

--[Comment]
--overrides:
--*
--Component GetComponent(Type type)
--Returns the component of Type type if the game object has one attached, null if it doesn't.
--params:
--type:    The type of Component to retrieve.

--*
--Component GetComponent(String type)
--Returns the component with name type if the game object has one attached, null if it doesn't.
--params:
--type:    The type of Component to retrieve.

--*
--no static method,use ':'
function GameObject:GetComponent() end 

--[Comment]
--overrides:
--*
--Component GetComponentInChildren(Type type,Boolean includeInactive)
--Returns the component of Type type in the GameObject or any of its children using depth first search.
--params:
--type:    The type of Component to retrieve.

--*
--Component GetComponentInChildren(Type type)
--Returns the component of Type type in the GameObject or any of its children using depth first search.
--params:
--type:    The type of Component to retrieve.

--*
--no static method,use ':'
function GameObject:GetComponentInChildren() end 

--[Comment]
--overrides:
--*
--Component GetComponentInParent(Type type)
--Returns the component of Type type in the GameObject or any of its parents.
--params:
--type:    Type of component to find.

--*
--no static method,use ':'
function GameObject:GetComponentInParent() end 

--[Comment]
--overrides:
--*
--Component[] GetComponents(Type type)
--Returns all components of Type type in the GameObject.
--params:
--type:    The type of Component to retrieve.

--*
--Void GetComponents(Type type,List`1 results)
--*
--no static method,use ':'
function GameObject:GetComponents() end 

--[Comment]
--overrides:
--*
--Component[] GetComponentsInChildren(Type type)
--Returns all components of Type type in the GameObject or any of its children.
--params:
--type:    The type of Component to retrieve.
--includeInactive:    Should Components on inactive GameObjects be included in the found set?

--*
--Component[] GetComponentsInChildren(Type type,Boolean includeInactive)
--Returns all components of Type type in the GameObject or any of its children.
--params:
--type:    The type of Component to retrieve.
--includeInactive:    Should Components on inactive GameObjects be included in the found set?

--*
--no static method,use ':'
function GameObject:GetComponentsInChildren() end 

--[Comment]
--overrides:
--*
--Component[] GetComponentsInParent(Type type)
--*
--Component[] GetComponentsInParent(Type type,Boolean includeInactive)
--Returns all components of Type type in the GameObject or any of its parents.
--params:
--type:    The type of Component to retrieve.
--includeInactive:    Should inactive Components be included in the found set?

--*
--no static method,use ':'
function GameObject:GetComponentsInParent() end 

--[Comment]
--overrides:
--*
--Void SetActive(Boolean value)
--Activates/Deactivates the GameObject.
--params:
--value:    Activate or deactivation the  object.

--*
--no static method,use ':'
function GameObject:SetActive() end 

--[Comment]
--overrides:
--*
--Boolean CompareTag(String tag)
--Is this game object tagged with tag ?
--params:
--tag:    The tag to compare.

--*
--no static method,use ':'
function GameObject:CompareTag() end 

--[Comment]
--overrides:
--*
--GameObject FindGameObjectWithTag(String tag)
--*
--static method,use '.'
function GameObject.FindGameObjectWithTag() end 

--[Comment]
--overrides:
--*
--GameObject FindWithTag(String tag)
--Returns one active GameObject tagged tag. Returns null if no GameObject was found.
--params:
--tag:    The tag to search for.

--*
--static method,use '.'
function GameObject.FindWithTag() end 

--[Comment]
--overrides:
--*
--GameObject[] FindGameObjectsWithTag(String tag)
--Returns a list of active GameObjects tagged tag. Returns empty array if no GameObject was found.
--params:
--tag:    The name of the tag to search GameObjects for.

--*
--static method,use '.'
function GameObject.FindGameObjectsWithTag() end 

--[Comment]
--overrides:
--*
--Void SendMessageUpwards(String methodName,Object value,SendMessageOptions options)
--Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour.
--params:
--methodName:    The name of the method to call.
--value:    An optional parameter value to pass to the called method.
--options:    Should an error be raised if the method doesn't exist on the target object?

--*
--Void SendMessageUpwards(String methodName,Object value)
--Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour.
--params:
--methodName:    The name of the method to call.
--value:    An optional parameter value to pass to the called method.
--options:    Should an error be raised if the method doesn't exist on the target object?

--*
--Void SendMessageUpwards(String methodName)
--Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour.
--params:
--methodName:    The name of the method to call.
--value:    An optional parameter value to pass to the called method.
--options:    Should an error be raised if the method doesn't exist on the target object?

--*
--Void SendMessageUpwards(String methodName,SendMessageOptions options)
--*
--no static method,use ':'
function GameObject:SendMessageUpwards() end 

--[Comment]
--overrides:
--*
--Void SendMessage(String methodName,Object value,SendMessageOptions options)
--Calls the method named methodName on every MonoBehaviour in this game object.
--params:
--methodName:    The name of the method to call.
--value:    An optional parameter value to pass to the called method.
--options:    Should an error be raised if the method doesn't exist on the target object?

--*
--Void SendMessage(String methodName,Object value)
--Calls the method named methodName on every MonoBehaviour in this game object.
--params:
--methodName:    The name of the method to call.
--value:    An optional parameter value to pass to the called method.
--options:    Should an error be raised if the method doesn't exist on the target object?

--*
--Void SendMessage(String methodName)
--Calls the method named methodName on every MonoBehaviour in this game object.
--params:
--methodName:    The name of the method to call.
--value:    An optional parameter value to pass to the called method.
--options:    Should an error be raised if the method doesn't exist on the target object?

--*
--Void SendMessage(String methodName,SendMessageOptions options)
--*
--no static method,use ':'
function GameObject:SendMessage() end 

--[Comment]
--overrides:
--*
--Void BroadcastMessage(String methodName,Object parameter,SendMessageOptions options)
--Calls the method named methodName on every MonoBehaviour in this game object or any of its children.
--*
--Void BroadcastMessage(String methodName,Object parameter)
--Calls the method named methodName on every MonoBehaviour in this game object or any of its children.
--*
--Void BroadcastMessage(String methodName)
--Calls the method named methodName on every MonoBehaviour in this game object or any of its children.
--*
--Void BroadcastMessage(String methodName,SendMessageOptions options)
--*
--no static method,use ':'
function GameObject:BroadcastMessage() end 

--[Comment]
--overrides:
--*
--Component AddComponent(Type componentType)
--Adds a component class of type componentType to the game object. C# Users can use a generic version.
--*
--no static method,use ':'
function GameObject:AddComponent() end 

--[Comment]
--overrides:
--*
--GameObject Find(String name)
--Finds a GameObject by name and returns it.
--*
--static method,use '.'
function GameObject.Find() end 

TrackedReference = {} 
--*
--[Comment]
--overrides:
--*
--Boolean op_Equality(TrackedReference x,TrackedReference y)
--*
--static method,use '.'
function TrackedReference.op_Equality() end 

--[Comment]
--overrides:
--*
--Boolean op_Inequality(TrackedReference x,TrackedReference y)
--*
--static method,use '.'
function TrackedReference.op_Inequality() end 

--[Comment]
--overrides:
--*
--Boolean Equals(Object o)
--*
--no static method,use ':'
function TrackedReference:Equals() end 

--[Comment]
--overrides:
--*
--Int32 GetHashCode()
--*
--no static method,use ':'
function TrackedReference:GetHashCode() end 

--[Comment]
--overrides:
--*
--Boolean op_Implicit(TrackedReference exists)
--*
--static method,use '.'
function TrackedReference.op_Implicit() end 

Application = {} 
--*
--[Comment]
--consturctor for Application overrides:
--*
--Application.New()
--*

function Application.New() end
--*
--[Comment]
-- property: Int32 Application.streamedBytes	get	
--How many bytes have we downloaded from the main unity web stream (Read Only).
Application.streamedBytes = nil 
--*
--[Comment]
-- property: Boolean Application.isPlaying	get	
--Returns true when in any kind of player (Read Only).
Application.isPlaying = nil 
--*
--[Comment]
-- property: Boolean Application.isEditor	get	
--Are we running inside the Unity editor? (Read Only)
Application.isEditor = nil 
--*
--[Comment]
-- property: Boolean Application.isWebPlayer	get	
--Are we running inside a web player? (Read Only)
Application.isWebPlayer = nil 
--*
--[Comment]
-- property: RuntimePlatform Application.platform	get	
--Returns the platform the game is running on (Read Only).
Application.platform = nil 
--*
--[Comment]
-- property: Boolean Application.isMobilePlatform	get	
--Is the current Runtime platform a known mobile platform.
Application.isMobilePlatform = nil 
--*
--[Comment]
-- property: Boolean Application.isConsolePlatform	get	
--Is the current Runtime platform a known console platform.
Application.isConsolePlatform = nil 
--*
--[Comment]
-- property: Boolean Application.runInBackground	get	set	
--Should the player be running when the application is in the background?
Application.runInBackground = nil 
--*
--[Comment]
-- property: String Application.dataPath	get	
--Contains the path to the game data folder (Read Only).
Application.dataPath = nil 
--*
--[Comment]
-- property: String Application.streamingAssetsPath	get	
--Contains the path to the StreamingAssets folder (Read Only).
Application.streamingAssetsPath = nil 
--*
--[Comment]
-- property: String Application.persistentDataPath	get	
--Contains the path to a persistent data directory (Read Only).
Application.persistentDataPath = nil 
--*
--[Comment]
-- property: String Application.temporaryCachePath	get	
--Contains the path to a temporary data / cache directory (Read Only).
Application.temporaryCachePath = nil 
--*
--[Comment]
-- property: String Application.srcValue	get	
--The path to the web player data file relative to the html file (Read Only).
Application.srcValue = nil 
--*
--[Comment]
-- property: String Application.absoluteURL	get	
--The absolute path to the web player data file (Read Only).
Application.absoluteURL = nil 
--*
--[Comment]
-- property: String Application.unityVersion	get	
--The version of the Unity runtime used to play the content.
Application.unityVersion = nil 
--*
--[Comment]
-- property: String Application.version	get	
--Returns application version number  (Read Only).
Application.version = nil 
--*
--[Comment]
-- property: String Application.installerName	get	
--Returns the name of the store or package that installed the application (Read Only).
Application.installerName = nil 
--*
--[Comment]
-- property: String Application.bundleIdentifier	get	
--Returns application bundle identifier at runtime.
Application.bundleIdentifier = nil 
--*
--[Comment]
-- property: ApplicationInstallMode Application.installMode	get	
--Returns application install mode (Read Only).
Application.installMode = nil 
--*
--[Comment]
-- property: ApplicationSandboxType Application.sandboxType	get	
--Returns application running in sandbox (Read Only).
Application.sandboxType = nil 
--*
--[Comment]
-- property: String Application.productName	get	
--Returns application product name (Read Only).
Application.productName = nil 
--*
--[Comment]
-- property: String Application.companyName	get	
--Return application company name (Read Only).
Application.companyName = nil 
--*
--[Comment]
-- property: String Application.cloudProjectId	get	
--A unique cloud project identifier. It is unique for every project (Read Only).
Application.cloudProjectId = nil 
--*
--[Comment]
-- property: Int32 Application.targetFrameRate	get	set	
--Instructs game to try to render at a specified frame rate.
Application.targetFrameRate = nil 
--*
--[Comment]
-- property: SystemLanguage Application.systemLanguage	get	
--The language the user's operating system is running in.
Application.systemLanguage = nil 
--*
--[Comment]
-- property: ThreadPriority Application.backgroundLoadingPriority	get	set	
--Priority of background loading thread.
Application.backgroundLoadingPriority = nil 
--*
--[Comment]
-- property: NetworkReachability Application.internetReachability	get	
--Returns the type of Internet reachability currently possible on the device.
Application.internetReachability = nil 
--*
--[Comment]
-- property: Boolean Application.genuine	get	
--Returns false if application is altered in any way after it was built.
Application.genuine = nil 
--*
--[Comment]
-- property: Boolean Application.genuineCheckAvailable	get	
--Returns true if application integrity can be confirmed.
Application.genuineCheckAvailable = nil 
--*
--[Comment]
--overrides:
--*
--Void Quit()
--Quits the player application.
--*
--static method,use '.'
function Application.Quit() end 

--[Comment]
--overrides:
--*
--Void CancelQuit()
--Cancels quitting the application. This is useful for showing a splash screen at the end of a game.
--*
--static method,use '.'
function Application.CancelQuit() end 

--[Comment]
--overrides:
--*
--Void Unload()
--Unloads the Unity runtime.
--*
--static method,use '.'
function Application.Unload() end 

--[Comment]
--overrides:
--*
--Single GetStreamProgressForLevel(Int32 levelIndex)
--How far has the download progressed? [0...1].
--*
--Single GetStreamProgressForLevel(String levelName)
--How far has the download progressed? [0...1].
--*
--static method,use '.'
function Application.GetStreamProgressForLevel() end 

--[Comment]
--overrides:
--*
--Boolean CanStreamedLevelBeLoaded(Int32 levelIndex)
--Can the streamed level be loaded?
--*
--Boolean CanStreamedLevelBeLoaded(String levelName)
--Can the streamed level be loaded?
--*
--static method,use '.'
function Application.CanStreamedLevelBeLoaded() end 

--[Comment]
--overrides:
--*
--Void CaptureScreenshot(String filename,Int32 superSize)
--Captures a screenshot at path filename as a PNG file.
--params:
--filename:    Pathname to save the screenshot file to.
--superSize:    Factor by which to increase resolution.

--*
--Void CaptureScreenshot(String filename)
--Captures a screenshot at path filename as a PNG file.
--params:
--filename:    Pathname to save the screenshot file to.
--superSize:    Factor by which to increase resolution.

--*
--static method,use '.'
function Application.CaptureScreenshot() end 

--[Comment]
--overrides:
--*
--Boolean HasProLicense()
--Is Unity activated with the Pro license?
--*
--static method,use '.'
function Application.HasProLicense() end 

--[Comment]
--overrides:
--*
--Void ExternalCall(String functionName,Object[] args)
--Calls a function in the web page that contains the WebGL Player.
--params:
--functionName:    Name of the function to call.
--args:    Array of arguments passed in the call.

--*
--static method,use '.'
function Application.ExternalCall() end 

--[Comment]
--overrides:
--*
--Void ExternalEval(String script)
--Evaluates script function in the containing web page.
--params:
--script:    The Javascript function to call.

--*
--static method,use '.'
function Application.ExternalEval() end 

--[Comment]
--overrides:
--*
--Boolean RequestAdvertisingIdentifierAsync(AdvertisingIdentifierCallback delegateMethod)
--*
--static method,use '.'
function Application.RequestAdvertisingIdentifierAsync() end 

--[Comment]
--overrides:
--*
--Void OpenURL(String url)
--Opens the url in a browser.
--*
--static method,use '.'
function Application.OpenURL() end 

--[Comment]
--overrides:
--*
--Void add_logMessageReceived(LogCallback value)
--*
--static method,use '.'
function Application.add_logMessageReceived() end 

--[Comment]
--overrides:
--*
--Void remove_logMessageReceived(LogCallback value)
--*
--static method,use '.'
function Application.remove_logMessageReceived() end 

--[Comment]
--overrides:
--*
--Void add_logMessageReceivedThreaded(LogCallback value)
--*
--static method,use '.'
function Application.add_logMessageReceivedThreaded() end 

--[Comment]
--overrides:
--*
--Void remove_logMessageReceivedThreaded(LogCallback value)
--*
--static method,use '.'
function Application.remove_logMessageReceivedThreaded() end 

--[Comment]
--overrides:
--*
--StackTraceLogType GetStackTraceLogType(LogType logType)
--Get stack trace logging options. The default value is StackTraceLogType.ScriptOnly.
--*
--static method,use '.'
function Application.GetStackTraceLogType() end 

--[Comment]
--overrides:
--*
--Void SetStackTraceLogType(LogType logType,StackTraceLogType stackTraceType)
--Set stack trace logging options. The default value is StackTraceLogType.ScriptOnly.
--*
--static method,use '.'
function Application.SetStackTraceLogType() end 

--[Comment]
--overrides:
--*
--AsyncOperation RequestUserAuthorization(UserAuthorization mode)
--Request authorization to use the webcam or microphone in the Web Player.
--*
--static method,use '.'
function Application.RequestUserAuthorization() end 

--[Comment]
--overrides:
--*
--Boolean HasUserAuthorization(UserAuthorization mode)
--Check if the user has authorized use of the webcam or microphone in the Web Player.
--*
--static method,use '.'
function Application.HasUserAuthorization() end 

Physics = {} 
--*
--[Comment]
--consturctor for Physics overrides:
--*
--Physics.New()
--*

function Physics.New() end
--*
--[Comment]
-- property: Vector3 Physics.gravity	get	set	
--The gravity applied to all rigid bodies in the scene.
Physics.gravity = nil 
--*
--[Comment]
-- property: Single Physics.defaultContactOffset	get	set	
--The default contact offset of the newly created colliders.
Physics.defaultContactOffset = nil 
--*
--[Comment]
-- property: Single Physics.bounceThreshold	get	set	
--Two colliding objects with a relative velocity below this will not bounce (default 2). Must be positive.
Physics.bounceThreshold = nil 
--*
--[Comment]
-- property: Int32 Physics.defaultSolverIterations	get	set	
--The defaultSolverIterations determines how accurately Rigidbody joints and collision contacts are resolved. (default 6). Must be positive.
Physics.defaultSolverIterations = nil 
--*
--[Comment]
-- property: Int32 Physics.defaultSolverVelocityIterations	get	set	
--The defaultSolverVelocityIterations affects how how accurately Rigidbody joints and collision contacts are resolved. (default 1). Must be positive.
Physics.defaultSolverVelocityIterations = nil 
--*
--[Comment]
-- property: Single Physics.sleepThreshold	get	set	
--The mass-normalized energy threshold, below which objects start going to sleep.
Physics.sleepThreshold = nil 
--*
--[Comment]
-- property: Boolean Physics.queriesHitTriggers	get	set	
--Specifies whether queries (raycasts, spherecasts, overlap tests, etc.) hit Triggers by default.
Physics.queriesHitTriggers = nil 
--*
--[Comment]
-- property: Boolean Physics.queriesHitBackfaces	get	set	
--Whether physics queries should hit back-face triangles.
Physics.queriesHitBackfaces = nil 
--*
--[Comment]
--overrides:
--*
--Boolean Raycast(Vector3 origin,Vector3 direction,Single maxDistance,Int32 layerMask)
--*
--Boolean Raycast(Vector3 origin,Vector3 direction,Single maxDistance)
--*
--Boolean Raycast(Vector3 origin,Vector3 direction)
--*
--Boolean Raycast(Vector3 origin,Vector3 direction,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Casts a ray, from point origin, in direction direction, of length maxDistance, against all colliders in the scene.
--params:
--origin:    The starting point of the ray in world coordinates.
--direction:    The direction of the ray.
--maxDistance:    The max distance the ray should check for collisions.
--layerMask:    A that is used to selectively ignore Colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Boolean Raycast(Vector3 origin,Vector3 direction,RaycastHit& hitInfo,Single maxDistance,Int32 layerMask)
--*
--Boolean Raycast(Vector3 origin,Vector3 direction,RaycastHit& hitInfo,Single maxDistance)
--*
--Boolean Raycast(Vector3 origin,Vector3 direction,RaycastHit& hitInfo)
--*
--Boolean Raycast(Vector3 origin,Vector3 direction,RaycastHit& hitInfo,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Casts a ray against all colliders in the scene and returns detailed information on what was hit.
--params:
--origin:    The starting point of the ray in world coordinates.
--direction:    The direction of the ray.
--hitInfo:    If true is returned, hitInfo will contain more information about where the collider was hit (See Also: RaycastHit).
--maxDistance:    The max distance the ray should check for collisions.
--layerMask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Boolean Raycast(Ray ray,Single maxDistance,Int32 layerMask)
--*
--Boolean Raycast(Ray ray,Single maxDistance)
--*
--Boolean Raycast(Ray ray)
--*
--Boolean Raycast(Ray ray,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Same as above using ray.origin and ray.direction instead of origin and direction.
--params:
--ray:    The starting point and direction of the ray.
--maxDistance:    The max distance the ray should check for collisions.
--layerMask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Boolean Raycast(Ray ray,RaycastHit& hitInfo,Single maxDistance,Int32 layerMask)
--*
--Boolean Raycast(Ray ray,RaycastHit& hitInfo,Single maxDistance)
--*
--Boolean Raycast(Ray ray,RaycastHit& hitInfo)
--*
--Boolean Raycast(Ray ray,RaycastHit& hitInfo,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Same as above using ray.origin and ray.direction instead of origin and direction.
--params:
--ray:    The starting point and direction of the ray.
--hitInfo:    If true is returned, hitInfo will contain more information about where the collider was hit (See Also: RaycastHit).
--maxDistance:    The max distance the ray should check for collisions.
--layerMask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--static method,use '.'
function Physics.Raycast() end 

--[Comment]
--overrides:
--*
--RaycastHit[] RaycastAll(Ray ray,Single maxDistance,Int32 layerMask)
--*
--RaycastHit[] RaycastAll(Ray ray,Single maxDistance)
--*
--RaycastHit[] RaycastAll(Ray ray)
--*
--RaycastHit[] RaycastAll(Ray ray,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Casts a ray through the scene and returns all hits. Note that order is not guaranteed.
--params:
--ray:    The starting point and direction of the ray.
--maxDistance:    The max distance the rayhit is allowed to be from the start of the ray.
--layerMask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--RaycastHit[] RaycastAll(Vector3 origin,Vector3 direction,Single maxDistance,Int32 layermask,QueryTriggerInteraction queryTriggerInteraction)
--See Also: Raycast.
--params:
--origin:    The starting point of the ray in world coordinates.
--direction:    The direction of the ray.
--maxDistance:    The max distance the rayhit is allowed to be from the start of the ray.
--layermask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--RaycastHit[] RaycastAll(Vector3 origin,Vector3 direction,Single maxDistance,Int32 layermask)
--*
--RaycastHit[] RaycastAll(Vector3 origin,Vector3 direction,Single maxDistance)
--*
--RaycastHit[] RaycastAll(Vector3 origin,Vector3 direction)
--*
--static method,use '.'
function Physics.RaycastAll() end 

--[Comment]
--overrides:
--*
--Int32 RaycastNonAlloc(Ray ray,RaycastHit[] results,Single maxDistance,Int32 layerMask)
--*
--Int32 RaycastNonAlloc(Ray ray,RaycastHit[] results,Single maxDistance)
--*
--Int32 RaycastNonAlloc(Ray ray,RaycastHit[] results)
--*
--Int32 RaycastNonAlloc(Ray ray,RaycastHit[] results,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Cast a ray through the scene and store the hits into the buffer.
--params:
--ray:    The starting point and direction of the ray.
--results:    The buffer to store the hits into.
--maxDistance:    The max distance the rayhit is allowed to be from the start of the ray.
--layerMask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Int32 RaycastNonAlloc(Vector3 origin,Vector3 direction,RaycastHit[] results,Single maxDistance,Int32 layermask,QueryTriggerInteraction queryTriggerInteraction)
--Cast a ray through the scene and store the hits into the buffer.
--params:
--origin:    The starting point and direction of the ray.
--results:    The buffer to store the hits into.
--direction:    The direction of the ray.
--maxDistance:    The max distance the rayhit is allowed to be from the start of the ray.
--layermask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Int32 RaycastNonAlloc(Vector3 origin,Vector3 direction,RaycastHit[] results,Single maxDistance,Int32 layermask)
--*
--Int32 RaycastNonAlloc(Vector3 origin,Vector3 direction,RaycastHit[] results,Single maxDistance)
--*
--Int32 RaycastNonAlloc(Vector3 origin,Vector3 direction,RaycastHit[] results)
--*
--static method,use '.'
function Physics.RaycastNonAlloc() end 

--[Comment]
--overrides:
--*
--Boolean Linecast(Vector3 start,Vector3 end,Int32 layerMask)
--*
--Boolean Linecast(Vector3 start,Vector3 end)
--*
--Boolean Linecast(Vector3 start,Vector3 end,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Returns true if there is any collider intersecting the line between start and end.
--params:
--start:    Start point.
--end:    End point.
--layerMask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Boolean Linecast(Vector3 start,Vector3 end,RaycastHit& hitInfo,Int32 layerMask)
--*
--Boolean Linecast(Vector3 start,Vector3 end,RaycastHit& hitInfo)
--*
--Boolean Linecast(Vector3 start,Vector3 end,RaycastHit& hitInfo,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Returns true if there is any collider intersecting the line between start and end.
--params:
--start:    Start point.
--end:    End point.
--layerMask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.
--hitInfo:    If true is returned, hitInfo will contain more information about where the collider was hit (See Also: RaycastHit).

--*
--static method,use '.'
function Physics.Linecast() end 

--[Comment]
--overrides:
--*
--Collider[] OverlapSphere(Vector3 position,Single radius,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Returns an array with all colliders touching or inside the sphere.
--params:
--position:    Center of the sphere.
--radius:    Radius of the sphere.
--layerMask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Collider[] OverlapSphere(Vector3 position,Single radius,Int32 layerMask)
--*
--Collider[] OverlapSphere(Vector3 position,Single radius)
--*
--static method,use '.'
function Physics.OverlapSphere() end 

--[Comment]
--overrides:
--*
--Int32 OverlapSphereNonAlloc(Vector3 position,Single radius,Collider[] results,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Computes and stores colliders touching or inside the sphere into the provided buffer.
--params:
--position:    Center of the sphere.
--radius:    Radius of the sphere.
--results:    The buffer to store the results into.
--layerMask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Int32 OverlapSphereNonAlloc(Vector3 position,Single radius,Collider[] results,Int32 layerMask)
--*
--Int32 OverlapSphereNonAlloc(Vector3 position,Single radius,Collider[] results)
--*
--static method,use '.'
function Physics.OverlapSphereNonAlloc() end 

--[Comment]
--overrides:
--*
--Collider[] OverlapCapsule(Vector3 point0,Vector3 point1,Single radius,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Check the given capsule against the physics world and return all overlapping colliders.
--params:
--point0:    The center of the sphere at the start of the capsule.
--point1:    The center of the sphere at the end of the capsule.
--radius:    The radius of the capsule.
--layerMask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Collider[] OverlapCapsule(Vector3 point0,Vector3 point1,Single radius,Int32 layerMask)
--*
--Collider[] OverlapCapsule(Vector3 point0,Vector3 point1,Single radius)
--*
--static method,use '.'
function Physics.OverlapCapsule() end 

--[Comment]
--overrides:
--*
--Int32 OverlapCapsuleNonAlloc(Vector3 point0,Vector3 point1,Single radius,Collider[] results,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Check the given capsule against the physics world and return all overlapping colliders in the user-provided buffer.
--params:
--point0:    The center of the sphere at the start of the capsule.
--point1:    The center of the sphere at the end of the capsule.
--radius:    The radius of the capsule.
--results:    The buffer to store the results into.
--layerMask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Int32 OverlapCapsuleNonAlloc(Vector3 point0,Vector3 point1,Single radius,Collider[] results,Int32 layerMask)
--*
--Int32 OverlapCapsuleNonAlloc(Vector3 point0,Vector3 point1,Single radius,Collider[] results)
--*
--static method,use '.'
function Physics.OverlapCapsuleNonAlloc() end 

--[Comment]
--overrides:
--*
--Boolean CapsuleCast(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,Single maxDistance,Int32 layerMask)
--*
--Boolean CapsuleCast(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,Single maxDistance)
--*
--Boolean CapsuleCast(Vector3 point1,Vector3 point2,Single radius,Vector3 direction)
--*
--Boolean CapsuleCast(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Casts a capsule against all colliders in the scene and returns detailed information on what was hit.
--params:
--point1:    The center of the sphere at the start of the capsule.
--point2:    The center of the sphere at the end of the capsule.
--radius:    The radius of the capsule.
--direction:    The direction into which to sweep the capsule.
--maxDistance:    The max length of the sweep.
--layerMask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Boolean CapsuleCast(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,RaycastHit& hitInfo,Single maxDistance,Int32 layerMask)
--*
--Boolean CapsuleCast(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,RaycastHit& hitInfo,Single maxDistance)
--*
--Boolean CapsuleCast(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,RaycastHit& hitInfo)
--*
--Boolean CapsuleCast(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,RaycastHit& hitInfo,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--
--params:
--point1:    The center of the sphere at the start of the capsule.
--point2:    The center of the sphere at the end of the capsule.
--radius:    The radius of the capsule.
--direction:    The direction into which to sweep the capsule.
--maxDistance:    The max length of the sweep.
--hitInfo:    If true is returned, hitInfo will contain more information about where the collider was hit (See Also: RaycastHit).
--layerMask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--static method,use '.'
function Physics.CapsuleCast() end 

--[Comment]
--overrides:
--*
--Boolean SphereCast(Vector3 origin,Single radius,Vector3 direction,RaycastHit& hitInfo,Single maxDistance,Int32 layerMask)
--*
--Boolean SphereCast(Vector3 origin,Single radius,Vector3 direction,RaycastHit& hitInfo,Single maxDistance)
--*
--Boolean SphereCast(Vector3 origin,Single radius,Vector3 direction,RaycastHit& hitInfo)
--*
--Boolean SphereCast(Vector3 origin,Single radius,Vector3 direction,RaycastHit& hitInfo,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Casts a sphere along a ray and returns detailed information on what was hit.
--params:
--origin:    The center of the sphere at the start of the sweep.
--radius:    The radius of the sphere.
--direction:    The direction into which to sweep the sphere.
--hitInfo:    If true is returned, hitInfo will contain more information about where the collider was hit (See Also: RaycastHit).
--maxDistance:    The max length of the cast.
--layerMask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Boolean SphereCast(Ray ray,Single radius,Single maxDistance,Int32 layerMask)
--*
--Boolean SphereCast(Ray ray,Single radius,Single maxDistance)
--*
--Boolean SphereCast(Ray ray,Single radius)
--*
--Boolean SphereCast(Ray ray,Single radius,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Casts a sphere along a ray and returns detailed information on what was hit.
--params:
--ray:    The starting point and direction of the ray into which the sphere sweep is cast.
--radius:    The radius of the sphere.
--maxDistance:    The max length of the cast.
--layerMask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Boolean SphereCast(Ray ray,Single radius,RaycastHit& hitInfo,Single maxDistance,Int32 layerMask)
--*
--Boolean SphereCast(Ray ray,Single radius,RaycastHit& hitInfo,Single maxDistance)
--*
--Boolean SphereCast(Ray ray,Single radius,RaycastHit& hitInfo)
--*
--Boolean SphereCast(Ray ray,Single radius,RaycastHit& hitInfo,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--
--params:
--ray:    The starting point and direction of the ray into which the sphere sweep is cast.
--radius:    The radius of the sphere.
--hitInfo:    If true is returned, hitInfo will contain more information about where the collider was hit (See Also: RaycastHit).
--maxDistance:    The max length of the cast.
--layerMask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--static method,use '.'
function Physics.SphereCast() end 

--[Comment]
--overrides:
--*
--RaycastHit[] CapsuleCastAll(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,Single maxDistance,Int32 layermask,QueryTriggerInteraction queryTriggerInteraction)
--Like Physics.CapsuleCast, but this function will return all hits the capsule sweep intersects.
--params:
--point1:    The center of the sphere at the start of the capsule.
--point2:    The center of the sphere at the end of the capsule.
--radius:    The radius of the capsule.
--direction:    The direction into which to sweep the capsule.
--maxDistance:    The max length of the sweep.
--layermask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--RaycastHit[] CapsuleCastAll(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,Single maxDistance,Int32 layermask)
--*
--RaycastHit[] CapsuleCastAll(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,Single maxDistance)
--*
--RaycastHit[] CapsuleCastAll(Vector3 point1,Vector3 point2,Single radius,Vector3 direction)
--*
--static method,use '.'
function Physics.CapsuleCastAll() end 

--[Comment]
--overrides:
--*
--Int32 CapsuleCastNonAlloc(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,RaycastHit[] results,Single maxDistance,Int32 layermask,QueryTriggerInteraction queryTriggerInteraction)
--Casts a capsule against all colliders in the scene and returns detailed information on what was hit into the buffer.
--params:
--point1:    The center of the sphere at the start of the capsule.
--point2:    The center of the sphere at the end of the capsule.
--radius:    The radius of the capsule.
--direction:    The direction into which to sweep the capsule.
--results:    The buffer to store the hits into.
--maxDistance:    The max length of the sweep.
--layermask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Int32 CapsuleCastNonAlloc(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,RaycastHit[] results,Single maxDistance,Int32 layermask)
--*
--Int32 CapsuleCastNonAlloc(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,RaycastHit[] results,Single maxDistance)
--*
--Int32 CapsuleCastNonAlloc(Vector3 point1,Vector3 point2,Single radius,Vector3 direction,RaycastHit[] results)
--*
--static method,use '.'
function Physics.CapsuleCastNonAlloc() end 

--[Comment]
--overrides:
--*
--RaycastHit[] SphereCastAll(Vector3 origin,Single radius,Vector3 direction,Single maxDistance,Int32 layerMask)
--*
--RaycastHit[] SphereCastAll(Vector3 origin,Single radius,Vector3 direction,Single maxDistance)
--*
--RaycastHit[] SphereCastAll(Vector3 origin,Single radius,Vector3 direction)
--*
--RaycastHit[] SphereCastAll(Vector3 origin,Single radius,Vector3 direction,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Like Physics.SphereCast, but this function will return all hits the sphere sweep intersects.
--params:
--origin:    The center of the sphere at the start of the sweep.
--radius:    The radius of the sphere.
--direction:    The direction in which to sweep the sphere.
--maxDistance:    The max length of the sweep.
--layerMask:    A that is used to selectively ignore colliders when casting a sphere.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--RaycastHit[] SphereCastAll(Ray ray,Single radius,Single maxDistance,Int32 layerMask)
--*
--RaycastHit[] SphereCastAll(Ray ray,Single radius,Single maxDistance)
--*
--RaycastHit[] SphereCastAll(Ray ray,Single radius)
--*
--RaycastHit[] SphereCastAll(Ray ray,Single radius,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Like Physics.SphereCast, but this function will return all hits the sphere sweep intersects.
--params:
--ray:    The starting point and direction of the ray into which the sphere sweep is cast.
--radius:    The radius of the sphere.
--maxDistance:    The max length of the sweep.
--layerMask:    A that is used to selectively ignore colliders when casting a sphere.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--static method,use '.'
function Physics.SphereCastAll() end 

--[Comment]
--overrides:
--*
--Int32 SphereCastNonAlloc(Vector3 origin,Single radius,Vector3 direction,RaycastHit[] results,Single maxDistance,Int32 layerMask)
--*
--Int32 SphereCastNonAlloc(Vector3 origin,Single radius,Vector3 direction,RaycastHit[] results,Single maxDistance)
--*
--Int32 SphereCastNonAlloc(Vector3 origin,Single radius,Vector3 direction,RaycastHit[] results)
--*
--Int32 SphereCastNonAlloc(Vector3 origin,Single radius,Vector3 direction,RaycastHit[] results,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Cast sphere along the direction and store the results into buffer.
--params:
--origin:    The center of the sphere at the start of the sweep.
--radius:    The radius of the sphere.
--direction:    The direction in which to sweep the sphere.
--results:    The buffer to save the hits into.
--maxDistance:    The max length of the sweep.
--layerMask:    A that is used to selectively ignore colliders when casting a sphere.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Int32 SphereCastNonAlloc(Ray ray,Single radius,RaycastHit[] results,Single maxDistance,Int32 layerMask)
--*
--Int32 SphereCastNonAlloc(Ray ray,Single radius,RaycastHit[] results,Single maxDistance)
--*
--Int32 SphereCastNonAlloc(Ray ray,Single radius,RaycastHit[] results)
--*
--Int32 SphereCastNonAlloc(Ray ray,Single radius,RaycastHit[] results,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Cast sphere along the direction and store the results into buffer.
--params:
--ray:    The starting point and direction of the ray into which the sphere sweep is cast.
--radius:    The radius of the sphere.
--results:    The buffer to save the results to.
--maxDistance:    The max length of the sweep.
--layerMask:    A that is used to selectively ignore colliders when casting a sphere.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--static method,use '.'
function Physics.SphereCastNonAlloc() end 

--[Comment]
--overrides:
--*
--Boolean CheckSphere(Vector3 position,Single radius,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Returns true if there are any colliders overlapping the sphere defined by position and radius in world coordinates.
--params:
--position:    Center of the sphere.
--radius:    Radius of the sphere.
--layerMask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Boolean CheckSphere(Vector3 position,Single radius,Int32 layerMask)
--*
--Boolean CheckSphere(Vector3 position,Single radius)
--*
--static method,use '.'
function Physics.CheckSphere() end 

--[Comment]
--overrides:
--*
--Boolean CheckCapsule(Vector3 start,Vector3 end,Single radius,Int32 layermask,QueryTriggerInteraction queryTriggerInteraction)
--Checks if any colliders overlap a capsule-shaped volume in world space.
--params:
--start:    The center of the sphere at the start of the capsule.
--end:    The center of the sphere at the end of the capsule.
--radius:    The radius of the capsule.
--layermask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Boolean CheckCapsule(Vector3 start,Vector3 end,Single radius,Int32 layermask)
--*
--Boolean CheckCapsule(Vector3 start,Vector3 end,Single radius)
--*
--static method,use '.'
function Physics.CheckCapsule() end 

--[Comment]
--overrides:
--*
--Boolean CheckBox(Vector3 center,Vector3 halfExtents,Quaternion orientation,Int32 layermask,QueryTriggerInteraction queryTriggerInteraction)
--Check whether the given box overlaps with other colliders or not.
--params:
--center:    Center of the box.
--halfExtents:    Half the size of the box in each dimension.
--orientation:    Rotation of the box.
--layermask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Boolean CheckBox(Vector3 center,Vector3 halfExtents,Quaternion orientation,Int32 layermask)
--*
--Boolean CheckBox(Vector3 center,Vector3 halfExtents,Quaternion orientation)
--*
--Boolean CheckBox(Vector3 center,Vector3 halfExtents)
--*
--static method,use '.'
function Physics.CheckBox() end 

--[Comment]
--overrides:
--*
--Collider[] OverlapBox(Vector3 center,Vector3 halfExtents,Quaternion orientation,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Find all colliders touching or inside of the given box.
--params:
--center:    Center of the box.
--halfExtents:    Half of the size of the box in each dimension.
--orientation:    Rotation of the box.
--layerMask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Collider[] OverlapBox(Vector3 center,Vector3 halfExtents,Quaternion orientation,Int32 layerMask)
--*
--Collider[] OverlapBox(Vector3 center,Vector3 halfExtents,Quaternion orientation)
--*
--Collider[] OverlapBox(Vector3 center,Vector3 halfExtents)
--*
--static method,use '.'
function Physics.OverlapBox() end 

--[Comment]
--overrides:
--*
--Int32 OverlapBoxNonAlloc(Vector3 center,Vector3 halfExtents,Collider[] results,Quaternion orientation,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Find all colliders touching or inside of the given box, and store them into the buffer.
--params:
--center:    Center of the box.
--halfExtents:    Half of the size of the box in each dimension.
--results:    The buffer to store the results in.
--orientation:    Rotation of the box.
--layerMask:    A that is used to selectively ignore colliders when casting a ray.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Int32 OverlapBoxNonAlloc(Vector3 center,Vector3 halfExtents,Collider[] results,Quaternion orientation,Int32 layerMask)
--*
--Int32 OverlapBoxNonAlloc(Vector3 center,Vector3 halfExtents,Collider[] results,Quaternion orientation)
--*
--Int32 OverlapBoxNonAlloc(Vector3 center,Vector3 halfExtents,Collider[] results)
--*
--static method,use '.'
function Physics.OverlapBoxNonAlloc() end 

--[Comment]
--overrides:
--*
--RaycastHit[] BoxCastAll(Vector3 center,Vector3 halfExtents,Vector3 direction,Quaternion orientation,Single maxDistance,Int32 layermask,QueryTriggerInteraction queryTriggerInteraction)
--Like Physics.BoxCast, but returns all hits.
--params:
--center:    Center of the box.
--halfExtents:    Half the size of the box in each dimension.
--direction:    The direction in which to cast the box.
--orientation:    Rotation of the box.
--maxDistance:    The max length of the cast.
--layermask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--RaycastHit[] BoxCastAll(Vector3 center,Vector3 halfExtents,Vector3 direction,Quaternion orientation,Single maxDistance,Int32 layermask)
--*
--RaycastHit[] BoxCastAll(Vector3 center,Vector3 halfExtents,Vector3 direction,Quaternion orientation,Single maxDistance)
--*
--RaycastHit[] BoxCastAll(Vector3 center,Vector3 halfExtents,Vector3 direction,Quaternion orientation)
--*
--RaycastHit[] BoxCastAll(Vector3 center,Vector3 halfExtents,Vector3 direction)
--*
--static method,use '.'
function Physics.BoxCastAll() end 

--[Comment]
--overrides:
--*
--Int32 BoxCastNonAlloc(Vector3 center,Vector3 halfExtents,Vector3 direction,RaycastHit[] results,Quaternion orientation,Single maxDistance,Int32 layermask,QueryTriggerInteraction queryTriggerInteraction)
--Cast the box along the direction, and store hits in the provided buffer.
--params:
--center:    Center of the box.
--halfExtents:    Half the size of the box in each dimension.
--direction:    The direction in which to cast the box.
--results:    The buffer to store the results in.
--orientation:    Rotation of the box.
--maxDistance:    The max length of the cast.
--layermask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Int32 BoxCastNonAlloc(Vector3 center,Vector3 halfExtents,Vector3 direction,RaycastHit[] results,Quaternion orientation,Single maxDistance,Int32 layermask)
--*
--Int32 BoxCastNonAlloc(Vector3 center,Vector3 halfExtents,Vector3 direction,RaycastHit[] results,Quaternion orientation,Single maxDistance)
--*
--Int32 BoxCastNonAlloc(Vector3 center,Vector3 halfExtents,Vector3 direction,RaycastHit[] results,Quaternion orientation)
--*
--Int32 BoxCastNonAlloc(Vector3 center,Vector3 halfExtents,Vector3 direction,RaycastHit[] results)
--*
--static method,use '.'
function Physics.BoxCastNonAlloc() end 

--[Comment]
--overrides:
--*
--Boolean BoxCast(Vector3 center,Vector3 halfExtents,Vector3 direction,Quaternion orientation,Single maxDistance,Int32 layerMask)
--*
--Boolean BoxCast(Vector3 center,Vector3 halfExtents,Vector3 direction,Quaternion orientation,Single maxDistance)
--*
--Boolean BoxCast(Vector3 center,Vector3 halfExtents,Vector3 direction,Quaternion orientation)
--*
--Boolean BoxCast(Vector3 center,Vector3 halfExtents,Vector3 direction)
--*
--Boolean BoxCast(Vector3 center,Vector3 halfExtents,Vector3 direction,Quaternion orientation,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Casts the box along a ray and returns detailed information on what was hit.
--params:
--center:    Center of the box.
--halfExtents:    Half the size of the box in each dimension.
--direction:    The direction in which to cast the box.
--orientation:    Rotation of the box.
--maxDistance:    The max length of the cast.
--layerMask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--Boolean BoxCast(Vector3 center,Vector3 halfExtents,Vector3 direction,RaycastHit& hitInfo,Quaternion orientation,Single maxDistance,Int32 layerMask)
--*
--Boolean BoxCast(Vector3 center,Vector3 halfExtents,Vector3 direction,RaycastHit& hitInfo,Quaternion orientation,Single maxDistance)
--*
--Boolean BoxCast(Vector3 center,Vector3 halfExtents,Vector3 direction,RaycastHit& hitInfo,Quaternion orientation)
--*
--Boolean BoxCast(Vector3 center,Vector3 halfExtents,Vector3 direction,RaycastHit& hitInfo)
--*
--Boolean BoxCast(Vector3 center,Vector3 halfExtents,Vector3 direction,RaycastHit& hitInfo,Quaternion orientation,Single maxDistance,Int32 layerMask,QueryTriggerInteraction queryTriggerInteraction)
--Casts the box along a ray and returns detailed information on what was hit.
--params:
--center:    Center of the box.
--halfExtents:    Half the size of the box in each dimension.
--direction:    The direction in which to cast the box.
--hitInfo:    If true is returned, hitInfo will contain more information about where the collider was hit (See Also: RaycastHit).
--orientation:    Rotation of the box.
--maxDistance:    The max length of the cast.
--layerMask:    A that is used to selectively ignore colliders when casting a capsule.
--queryTriggerInteraction:    Specifies whether this query should hit Triggers.

--*
--static method,use '.'
function Physics.BoxCast() end 

--[Comment]
--overrides:
--*
--Void IgnoreCollision(Collider collider1,Collider collider2,Boolean ignore)
--Makes the collision detection system ignore all collisions between collider1 and collider2.
--*
--Void IgnoreCollision(Collider collider1,Collider collider2)
--*
--static method,use '.'
function Physics.IgnoreCollision() end 

--[Comment]
--overrides:
--*
--Void IgnoreLayerCollision(Int32 layer1,Int32 layer2,Boolean ignore)
--Makes the collision detection system ignore all collisions between any collider in layer1 and any collider in layer2.  Note that IgnoreLayerCollision will reset the trigger state of affected colliders, so you might receive OnTriggerExit and OnTriggerEnter messages in response to calling this.
--*
--Void IgnoreLayerCollision(Int32 layer1,Int32 layer2)
--*
--static method,use '.'
function Physics.IgnoreLayerCollision() end 

--[Comment]
--overrides:
--*
--Boolean GetIgnoreLayerCollision(Int32 layer1,Int32 layer2)
--Are collisions between layer1 and layer2 being ignored?
--*
--static method,use '.'
function Physics.GetIgnoreLayerCollision() end 

Collider = {} 
--*
--[Comment]
--consturctor for Collider overrides:
--*
--Collider.New()
--*

function Collider.New() end
--*
--[Comment]
-- property: Boolean Collider.enabled	get	set	
--Enabled Colliders will collide with other colliders, disabled Colliders won't.
Collider.enabled = nil 
--*
--[Comment]
-- property: Rigidbody Collider.attachedRigidbody	get	
--The rigidbody the collider is attached to.
Collider.attachedRigidbody = nil 
--*
--[Comment]
-- property: Boolean Collider.isTrigger	get	set	
--Is the collider a trigger?
Collider.isTrigger = nil 
--*
--[Comment]
-- property: Single Collider.contactOffset	get	set	
--Contact offset value of this collider.
Collider.contactOffset = nil 
--*
--[Comment]
-- property: PhysicMaterial Collider.material	get	set	
--The material used by the collider.
Collider.material = nil 
--*
--[Comment]
-- property: PhysicMaterial Collider.sharedMaterial	get	set	
--The shared physic material of this collider.
Collider.sharedMaterial = nil 
--*
--[Comment]
-- property: Bounds Collider.bounds	get	
--The world space bounding volume of the collider.
Collider.bounds = nil 
--*
--[Comment]
-- property: Transform Collider.transform	get	
--The Transform attached to this GameObject.
Collider.transform = nil 
--*
--[Comment]
-- property: GameObject Collider.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
Collider.gameObject = nil 
--*
--[Comment]
-- property: String Collider.tag	get	set	
--The tag of this game object.
Collider.tag = nil 
--*
--[Comment]
-- property: String Collider.name	get	set	
--The name of the object.
Collider.name = nil 
--*
--[Comment]
-- property: HideFlags Collider.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Collider.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Vector3 ClosestPointOnBounds(Vector3 position)
--The closest point to the bounding box of the attached collider.
--*
--no static method,use ':'
function Collider:ClosestPointOnBounds() end 

--[Comment]
--overrides:
--*
--Boolean Raycast(Ray ray,RaycastHit& hitInfo,Single maxDistance)
--Casts a Ray that ignores all Colliders except this one.
--params:
--ray:    The starting point and direction of the ray.
--hitInfo:    If true is returned, hitInfo will contain more information about where the collider was hit (See Also: RaycastHit).
--maxDistance:    The max length of the ray.

--*
--no static method,use ':'
function Collider:Raycast() end 

Time = {} 
--*
--[Comment]
--consturctor for Time overrides:
--*
--Time.New()
--*

function Time.New() end
--*
--[Comment]
-- property: Single Time.time	get	
--The time at the beginning of this frame (Read Only). This is the time in seconds since the start of the game.
Time.time = nil 
--*
--[Comment]
-- property: Single Time.timeSinceLevelLoad	get	
--The time this frame has started (Read Only). This is the time in seconds since the last level has been loaded.
Time.timeSinceLevelLoad = nil 
--*
--[Comment]
-- property: Single Time.deltaTime	get	
--The time in seconds it took to complete the last frame (Read Only).
Time.deltaTime = nil 
--*
--[Comment]
-- property: Single Time.fixedTime	get	
--The time the latest MonoBehaviour.FixedUpdate has started (Read Only). This is the time in seconds since the start of the game.
Time.fixedTime = nil 
--*
--[Comment]
-- property: Single Time.unscaledTime	get	
--The timeScale-independant time at the beginning of this frame (Read Only). This is the time in seconds since the start of the game.
Time.unscaledTime = nil 
--*
--[Comment]
-- property: Single Time.unscaledDeltaTime	get	
--The timeScale-independent time in seconds it took to complete the last frame (Read Only).
Time.unscaledDeltaTime = nil 
--*
--[Comment]
-- property: Single Time.fixedDeltaTime	get	set	
--The interval in seconds at which physics and other fixed frame rate updates (like MonoBehaviour's MonoBehaviour.FixedUpdate) are performed.
Time.fixedDeltaTime = nil 
--*
--[Comment]
-- property: Single Time.maximumDeltaTime	get	set	
--The maximum time a frame can take. Physics and other fixed frame rate updates (like MonoBehaviour's MonoBehaviour.FixedUpdate).
Time.maximumDeltaTime = nil 
--*
--[Comment]
-- property: Single Time.smoothDeltaTime	get	
--A smoothed out Time.deltaTime (Read Only).
Time.smoothDeltaTime = nil 
--*
--[Comment]
-- property: Single Time.maximumParticleDeltaTime	get	set	
--The maximum time a frame can spend on particle updates. If the frame takes longer than this, then updates are split into multiple smaller updates.
Time.maximumParticleDeltaTime = nil 
--*
--[Comment]
-- property: Single Time.timeScale	get	set	
--The scale at which the time is passing. This can be used for slow motion effects.
Time.timeScale = nil 
--*
--[Comment]
-- property: Int32 Time.frameCount	get	
--The total number of frames that have passed (Read Only).
Time.frameCount = nil 
--*
--[Comment]
-- property: Int32 Time.renderedFrameCount	get	
Time.renderedFrameCount = nil 
--*
--[Comment]
-- property: Single Time.realtimeSinceStartup	get	
--The real time in seconds since the game started (Read Only).
Time.realtimeSinceStartup = nil 
--*
--[Comment]
-- property: Int32 Time.captureFramerate	get	set	
--Slows game playback time to allow screenshots to be saved between frames.
Time.captureFramerate = nil 
--*
Texture = {} 
--*
--[Comment]
--consturctor for Texture overrides:
--*
--Texture.New()
--*

function Texture.New() end
--*
--[Comment]
-- property: Int32 Texture.masterTextureLimit	get	set	
Texture.masterTextureLimit = nil 
--*
--[Comment]
-- property: AnisotropicFiltering Texture.anisotropicFiltering	get	set	
Texture.anisotropicFiltering = nil 
--*
--[Comment]
-- property: Int32 Texture.width	get	set	
--Width of the texture in pixels. (Read Only)
Texture.width = nil 
--*
--[Comment]
-- property: Int32 Texture.height	get	set	
--Height of the texture in pixels. (Read Only)
Texture.height = nil 
--*
--[Comment]
-- property: TextureDimension Texture.dimension	get	set	
--Dimensionality (type) of the texture (Read Only).
Texture.dimension = nil 
--*
--[Comment]
-- property: FilterMode Texture.filterMode	get	set	
--Filtering mode of the texture.
Texture.filterMode = nil 
--*
--[Comment]
-- property: Int32 Texture.anisoLevel	get	set	
--Anisotropic filtering level of the texture.
Texture.anisoLevel = nil 
--*
--[Comment]
-- property: TextureWrapMode Texture.wrapMode	get	set	
--Wrap mode (Repeat or Clamp) of the texture.
Texture.wrapMode = nil 
--*
--[Comment]
-- property: Single Texture.mipMapBias	get	set	
--Mip map bias of the texture.
Texture.mipMapBias = nil 
--*
--[Comment]
-- property: Vector2 Texture.texelSize	get	
Texture.texelSize = nil 
--*
--[Comment]
-- property: String Texture.name	get	set	
--The name of the object.
Texture.name = nil 
--*
--[Comment]
-- property: HideFlags Texture.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Texture.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void SetGlobalAnisotropicFilteringLimits(Int32 forcedMin,Int32 globalMax)
--Sets Anisotropic limits.
--*
--static method,use '.'
function Texture.SetGlobalAnisotropicFilteringLimits() end 

--[Comment]
--overrides:
--*
--IntPtr GetNativeTexturePtr()
--Retrieve a native (underlying graphics API) pointer to the texture resource.
--*
--no static method,use ':'
function Texture:GetNativeTexturePtr() end 

Texture2D = {} 
--*
--[Comment]
--consturctor for Texture2D overrides:
--*
--Texture2D.New(Int32 width,Int32 height)
--Create a new empty texture.
--*

--Texture2D.New(Int32 width,Int32 height,TextureFormat format,Boolean mipmap)
--Create a new empty texture.
--*

--Texture2D.New(Int32 width,Int32 height,TextureFormat format,Boolean mipmap,Boolean linear)
--See Also: SetPixel, SetPixels, Apply functions.
--*

function Texture2D.New() end
--*
--[Comment]
-- property: Int32 Texture2D.mipmapCount	get	
--How many mipmap levels are in this texture (Read Only).
Texture2D.mipmapCount = nil 
--*
--[Comment]
-- property: TextureFormat Texture2D.format	get	
--The format of the pixel data in the texture (Read Only).
Texture2D.format = nil 
--*
--[Comment]
-- property: Texture2D Texture2D.whiteTexture	get	
--Get a small texture with all white pixels.
Texture2D.whiteTexture = nil 
--*
--[Comment]
-- property: Texture2D Texture2D.blackTexture	get	
--Get a small texture with all black pixels.
Texture2D.blackTexture = nil 
--*
--[Comment]
-- property: Boolean Texture2D.alphaIsTransparency	get	set	
Texture2D.alphaIsTransparency = nil 
--*
--[Comment]
-- property: Int32 Texture2D.width	get	set	
--Width of the texture in pixels. (Read Only)
Texture2D.width = nil 
--*
--[Comment]
-- property: Int32 Texture2D.height	get	set	
--Height of the texture in pixels. (Read Only)
Texture2D.height = nil 
--*
--[Comment]
-- property: TextureDimension Texture2D.dimension	get	set	
--Dimensionality (type) of the texture (Read Only).
Texture2D.dimension = nil 
--*
--[Comment]
-- property: FilterMode Texture2D.filterMode	get	set	
--Filtering mode of the texture.
Texture2D.filterMode = nil 
--*
--[Comment]
-- property: Int32 Texture2D.anisoLevel	get	set	
--Anisotropic filtering level of the texture.
Texture2D.anisoLevel = nil 
--*
--[Comment]
-- property: TextureWrapMode Texture2D.wrapMode	get	set	
--Wrap mode (Repeat or Clamp) of the texture.
Texture2D.wrapMode = nil 
--*
--[Comment]
-- property: Single Texture2D.mipMapBias	get	set	
--Mip map bias of the texture.
Texture2D.mipMapBias = nil 
--*
--[Comment]
-- property: Vector2 Texture2D.texelSize	get	
Texture2D.texelSize = nil 
--*
--[Comment]
-- property: String Texture2D.name	get	set	
--The name of the object.
Texture2D.name = nil 
--*
--[Comment]
-- property: HideFlags Texture2D.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Texture2D.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Texture2D CreateExternalTexture(Int32 width,Int32 height,TextureFormat format,Boolean mipmap,Boolean linear,IntPtr nativeTex)
--Creates Unity Texture out of externally created native texture object.
--params:
--nativeTex:    Native 2D texture object.
--width:    Width of texture in pixels.
--height:    Height of texture in pixels.
--format:    Format of underlying texture object.
--mipmap:    Does the texture have mipmaps?
--linear:    Is texture using linear color space?

--*
--static method,use '.'
function Texture2D.CreateExternalTexture() end 

--[Comment]
--overrides:
--*
--Void UpdateExternalTexture(IntPtr nativeTex)
--Updates Unity texture to use different native texture object.
--params:
--nativeTex:    Native 2D texture object.

--*
--no static method,use ':'
function Texture2D:UpdateExternalTexture() end 

--[Comment]
--overrides:
--*
--Void SetPixel(Int32 x,Int32 y,Color color)
--Sets pixel color at coordinates (x,y).
--*
--no static method,use ':'
function Texture2D:SetPixel() end 

--[Comment]
--overrides:
--*
--Color GetPixel(Int32 x,Int32 y)
--Returns pixel color at coordinates (x, y).
--*
--no static method,use ':'
function Texture2D:GetPixel() end 

--[Comment]
--overrides:
--*
--Color GetPixelBilinear(Single u,Single v)
--Returns filtered pixel color at normalized coordinates (u, v).
--*
--no static method,use ':'
function Texture2D:GetPixelBilinear() end 

--[Comment]
--overrides:
--*
--Void SetPixels(Color[] colors)
--*
--Void SetPixels(Color[] colors,Int32 miplevel)
--Set a block of pixel colors.
--params:
--colors:    The array of pixel colours to assign (a 2D image flattened to a 1D array).
--miplevel:    The mip level of the texture to write to.

--*
--Void SetPixels(Int32 x,Int32 y,Int32 blockWidth,Int32 blockHeight,Color[] colors,Int32 miplevel)
--Set a block of pixel colors.
--*
--Void SetPixels(Int32 x,Int32 y,Int32 blockWidth,Int32 blockHeight,Color[] colors)
--*
--no static method,use ':'
function Texture2D:SetPixels() end 

--[Comment]
--overrides:
--*
--Void SetPixels32(Color32[] colors)
--*
--Void SetPixels32(Color32[] colors,Int32 miplevel)
--Set a block of pixel colors.
--*
--Void SetPixels32(Int32 x,Int32 y,Int32 blockWidth,Int32 blockHeight,Color32[] colors)
--*
--Void SetPixels32(Int32 x,Int32 y,Int32 blockWidth,Int32 blockHeight,Color32[] colors,Int32 miplevel)
--Set a block of pixel colors.
--*
--no static method,use ':'
function Texture2D:SetPixels32() end 

--[Comment]
--overrides:
--*
--Boolean LoadImage(Byte[] data,Boolean markNonReadable)
--Loads PNG/JPG image byte array into a texture.
--params:
--data:    The byte array containing the image data to load.
--markNonReadable:    Set to false by default, pass true to optionally mark the texture as non-readable.

--*
--Boolean LoadImage(Byte[] data)
--*
--no static method,use ':'
function Texture2D:LoadImage() end 

--[Comment]
--overrides:
--*
--Void LoadRawTextureData(Byte[] data)
--Fills texture pixels with raw preformatted data.
--params:
--data:    Byte array to initialize texture pixels with.
--size:    Size of data in bytes.

--*
--Void LoadRawTextureData(IntPtr data,Int32 size)
--Fills texture pixels with raw preformatted data.
--params:
--data:    Byte array to initialize texture pixels with.
--size:    Size of data in bytes.

--*
--no static method,use ':'
function Texture2D:LoadRawTextureData() end 

--[Comment]
--overrides:
--*
--Byte[] GetRawTextureData()
--Get raw data from a texture.
--*
--no static method,use ':'
function Texture2D:GetRawTextureData() end 

--[Comment]
--overrides:
--*
--Color[] GetPixels()
--*
--Color[] GetPixels(Int32 miplevel)
--Get the pixel colors from the texture.
--params:
--miplevel:    The mipmap level to fetch the pixels from. Defaults to zero.

--*
--Color[] GetPixels(Int32 x,Int32 y,Int32 blockWidth,Int32 blockHeight,Int32 miplevel)
--Get a block of pixel colors.
--params:
--x:    The x position of the pixel array to fetch.
--y:    The y position of the pixel array to fetch.
--blockWidth:    The width length of the pixel array to fetch.
--blockHeight:    The height length of the pixel array to fetch.
--miplevel:    The mipmap level to fetch the pixels. Defaults to zero, and is         optional.

--*
--Color[] GetPixels(Int32 x,Int32 y,Int32 blockWidth,Int32 blockHeight)
--*
--no static method,use ':'
function Texture2D:GetPixels() end 

--[Comment]
--overrides:
--*
--Color32[] GetPixels32(Int32 miplevel)
--Get a block of pixel colors in Color32 format.
--*
--Color32[] GetPixels32()
--*
--no static method,use ':'
function Texture2D:GetPixels32() end 

--[Comment]
--overrides:
--*
--Void Apply(Boolean updateMipmaps,Boolean makeNoLongerReadable)
--Actually apply all previous SetPixel and SetPixels changes.
--params:
--updateMipmaps:    When set to true, mipmap levels are recalculated.
--makeNoLongerReadable:    When set to true, system memory copy of a texture is released.

--*
--Void Apply(Boolean updateMipmaps)
--*
--Void Apply()
--*
--no static method,use ':'
function Texture2D:Apply() end 

--[Comment]
--overrides:
--*
--Boolean Resize(Int32 width,Int32 height,TextureFormat format,Boolean hasMipMap)
--Resizes the texture.
--*
--Boolean Resize(Int32 width,Int32 height)
--Resizes the texture.
--*
--no static method,use ':'
function Texture2D:Resize() end 

--[Comment]
--overrides:
--*
--Void Compress(Boolean highQuality)
--Compress texture into DXT format.
--*
--no static method,use ':'
function Texture2D:Compress() end 

--[Comment]
--overrides:
--*
--Rect[] PackTextures(Texture2D[] textures,Int32 padding,Int32 maximumAtlasSize,Boolean makeNoLongerReadable)
--Packs multiple Textures into a texture atlas.
--params:
--textures:    Array of textures to pack into the atlas.
--padding:    Padding in pixels between the packed textures.
--maximumAtlasSize:    Maximum size of the resulting texture.
--makeNoLongerReadable:    Should the texture be marked as no longer readable?

--*
--Rect[] PackTextures(Texture2D[] textures,Int32 padding,Int32 maximumAtlasSize)
--*
--Rect[] PackTextures(Texture2D[] textures,Int32 padding)
--*
--no static method,use ':'
function Texture2D:PackTextures() end 

--[Comment]
--overrides:
--*
--Void ReadPixels(Rect source,Int32 destX,Int32 destY,Boolean recalculateMipMaps)
--Read pixels from screen into the saved texture data.
--params:
--source:    Rectangular region of the view to read from. Pixels are read from current render target.
--destX:    Horizontal pixel position in the texture to place the pixels that are read.
--destY:    Vertical pixel position in the texture to place the pixels that are read.
--recalculateMipMaps:    Should the texture's mipmaps be recalculated after reading?

--*
--Void ReadPixels(Rect source,Int32 destX,Int32 destY)
--*
--no static method,use ':'
function Texture2D:ReadPixels() end 

--[Comment]
--overrides:
--*
--Byte[] EncodeToPNG()
--Encodes this texture into PNG format.
--*
--no static method,use ':'
function Texture2D:EncodeToPNG() end 

--[Comment]
--overrides:
--*
--Byte[] EncodeToJPG(Int32 quality)
--Encodes this texture into JPG format.
--params:
--quality:    JPG quality to encode with, 1..100 (default 75).

--*
--Byte[] EncodeToJPG()
--Encodes this texture into JPG format.
--params:
--quality:    JPG quality to encode with, 1..100 (default 75).

--*
--no static method,use ':'
function Texture2D:EncodeToJPG() end 

Shader = {} 
--*
--[Comment]
--consturctor for Shader overrides:
--*
--Shader.New()
--*

function Shader.New() end
--*
--[Comment]
-- property: Boolean Shader.isSupported	get	
--Can this shader run on the end-users graphics card? (Read Only)
Shader.isSupported = nil 
--*
--[Comment]
-- property: Int32 Shader.maximumLOD	get	set	
--Shader LOD level for this shader.
Shader.maximumLOD = nil 
--*
--[Comment]
-- property: Int32 Shader.globalMaximumLOD	get	set	
--Shader LOD level for all shaders.
Shader.globalMaximumLOD = nil 
--*
--[Comment]
-- property: Int32 Shader.renderQueue	get	
--Render queue of this shader. (Read Only)
Shader.renderQueue = nil 
--*
--[Comment]
-- property: String Shader.name	get	set	
--The name of the object.
Shader.name = nil 
--*
--[Comment]
-- property: HideFlags Shader.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Shader.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Shader Find(String name)
--Finds a shader with the given name.
--*
--static method,use '.'
function Shader.Find() end 

--[Comment]
--overrides:
--*
--Void EnableKeyword(String keyword)
--Set a global shader keyword.
--*
--static method,use '.'
function Shader.EnableKeyword() end 

--[Comment]
--overrides:
--*
--Void DisableKeyword(String keyword)
--Unset a global shader keyword.
--*
--static method,use '.'
function Shader.DisableKeyword() end 

--[Comment]
--overrides:
--*
--Boolean IsKeywordEnabled(String keyword)
--Is global shader keyword enabled?
--*
--static method,use '.'
function Shader.IsKeywordEnabled() end 

--[Comment]
--overrides:
--*
--Void SetGlobalVector(String propertyName,Vector4 vec)
--Sets a global vector property for all shaders.
--*
--Void SetGlobalVector(Int32 nameID,Vector4 vec)
--Sets a global vector property for all shaders.
--*
--static method,use '.'
function Shader.SetGlobalVector() end 

--[Comment]
--overrides:
--*
--Void SetGlobalColor(String propertyName,Color color)
--Sets a global color property for all shaders.
--*
--Void SetGlobalColor(Int32 nameID,Color color)
--Sets a global color property for all shaders.
--*
--static method,use '.'
function Shader.SetGlobalColor() end 

--[Comment]
--overrides:
--*
--Void SetGlobalFloat(String propertyName,Single value)
--Sets a global float property for all shaders.
--*
--Void SetGlobalFloat(Int32 nameID,Single value)
--Sets a global float property for all shaders.
--*
--static method,use '.'
function Shader.SetGlobalFloat() end 

--[Comment]
--overrides:
--*
--Void SetGlobalInt(String propertyName,Int32 value)
--Sets a global int property for all shaders.
--*
--Void SetGlobalInt(Int32 nameID,Int32 value)
--Sets a global int property for all shaders.
--*
--static method,use '.'
function Shader.SetGlobalInt() end 

--[Comment]
--overrides:
--*
--Void SetGlobalMatrix(String propertyName,Matrix4x4 mat)
--Sets a global matrix property for all shaders.
--*
--Void SetGlobalMatrix(Int32 nameID,Matrix4x4 mat)
--Sets a global matrix property for all shaders.
--*
--static method,use '.'
function Shader.SetGlobalMatrix() end 

--[Comment]
--overrides:
--*
--Void SetGlobalTexture(String propertyName,Texture tex)
--Sets a global texture property for all shaders.
--*
--Void SetGlobalTexture(Int32 nameID,Texture tex)
--Sets a global texture property for all shaders.
--*
--static method,use '.'
function Shader.SetGlobalTexture() end 

--[Comment]
--overrides:
--*
--Void SetGlobalFloatArray(String name,List`1 values)
--*
--Void SetGlobalFloatArray(Int32 nameID,List`1 values)
--*
--Void SetGlobalFloatArray(String propertyName,Single[] values)
--Sets a global float array property for all shaders.
--*
--Void SetGlobalFloatArray(Int32 nameID,Single[] values)
--Sets a global float array property for all shaders.
--*
--static method,use '.'
function Shader.SetGlobalFloatArray() end 

--[Comment]
--overrides:
--*
--Void SetGlobalVectorArray(String name,List`1 values)
--*
--Void SetGlobalVectorArray(Int32 nameID,List`1 values)
--*
--Void SetGlobalVectorArray(String propertyName,Vector4[] values)
--Sets a global vector array property for all shaders.
--*
--Void SetGlobalVectorArray(Int32 nameID,Vector4[] values)
--Sets a global vector array property for all shaders.
--*
--static method,use '.'
function Shader.SetGlobalVectorArray() end 

--[Comment]
--overrides:
--*
--Void SetGlobalMatrixArray(String name,List`1 values)
--*
--Void SetGlobalMatrixArray(Int32 nameID,List`1 values)
--*
--Void SetGlobalMatrixArray(String propertyName,Matrix4x4[] values)
--Sets a global matrix array property for all shaders.
--*
--Void SetGlobalMatrixArray(Int32 nameID,Matrix4x4[] values)
--Sets a global matrix array property for all shaders.
--*
--static method,use '.'
function Shader.SetGlobalMatrixArray() end 

--[Comment]
--overrides:
--*
--Void SetGlobalBuffer(String name,ComputeBuffer buffer)
--Sets a global compute buffer property for all shaders.
--*
--Void SetGlobalBuffer(Int32 nameID,ComputeBuffer buffer)
--Sets a global compute buffer property for all shaders.
--*
--static method,use '.'
function Shader.SetGlobalBuffer() end 

--[Comment]
--overrides:
--*
--Single GetGlobalFloat(String name)
--Gets a global float property for all shaders previously set using SetGlobalFloat.
--*
--Single GetGlobalFloat(Int32 nameID)
--Gets a global float property for all shaders previously set using SetGlobalFloat.
--*
--static method,use '.'
function Shader.GetGlobalFloat() end 

--[Comment]
--overrides:
--*
--Int32 GetGlobalInt(String name)
--Gets a global int property for all shaders previously set using SetGlobalInt.
--*
--Int32 GetGlobalInt(Int32 nameID)
--Gets a global int property for all shaders previously set using SetGlobalInt.
--*
--static method,use '.'
function Shader.GetGlobalInt() end 

--[Comment]
--overrides:
--*
--Vector4 GetGlobalVector(String name)
--Gets a global vector property for all shaders previously set using SetGlobalVector.
--*
--Vector4 GetGlobalVector(Int32 nameID)
--Gets a global vector property for all shaders previously set using SetGlobalVector.
--*
--static method,use '.'
function Shader.GetGlobalVector() end 

--[Comment]
--overrides:
--*
--Color GetGlobalColor(String name)
--Gets a global color property for all shaders previously set using SetGlobalColor.
--*
--Color GetGlobalColor(Int32 nameID)
--Gets a global color property for all shaders previously set using SetGlobalColor.
--*
--static method,use '.'
function Shader.GetGlobalColor() end 

--[Comment]
--overrides:
--*
--Matrix4x4 GetGlobalMatrix(String name)
--Gets a global matrix property for all shaders previously set using SetGlobalMatrix.
--*
--Matrix4x4 GetGlobalMatrix(Int32 nameID)
--Gets a global matrix property for all shaders previously set using SetGlobalMatrix.
--*
--static method,use '.'
function Shader.GetGlobalMatrix() end 

--[Comment]
--overrides:
--*
--Texture GetGlobalTexture(String name)
--Gets a global texture property for all shaders previously set using SetGlobalTexture.
--*
--Texture GetGlobalTexture(Int32 nameID)
--Gets a global texture property for all shaders previously set using SetGlobalTexture.
--*
--static method,use '.'
function Shader.GetGlobalTexture() end 

--[Comment]
--overrides:
--*
--Void GetGlobalFloatArray(String name,List`1 values)
--*
--Void GetGlobalFloatArray(Int32 nameID,List`1 values)
--*
--Single[] GetGlobalFloatArray(String name)
--Gets a global float array for all shaders previously set using SetGlobalFloatArray.
--*
--Single[] GetGlobalFloatArray(Int32 nameID)
--Gets a global float array for all shaders previously set using SetGlobalFloatArray.
--*
--static method,use '.'
function Shader.GetGlobalFloatArray() end 

--[Comment]
--overrides:
--*
--Void GetGlobalVectorArray(String name,List`1 values)
--*
--Void GetGlobalVectorArray(Int32 nameID,List`1 values)
--*
--Vector4[] GetGlobalVectorArray(String name)
--Gets a global vector array for all shaders previously set using SetGlobalVectorArray.
--*
--Vector4[] GetGlobalVectorArray(Int32 nameID)
--Gets a global vector array for all shaders previously set using SetGlobalVectorArray.
--*
--static method,use '.'
function Shader.GetGlobalVectorArray() end 

--[Comment]
--overrides:
--*
--Void GetGlobalMatrixArray(String name,List`1 values)
--*
--Void GetGlobalMatrixArray(Int32 nameID,List`1 values)
--*
--Matrix4x4[] GetGlobalMatrixArray(String name)
--Gets a global matrix array for all shaders previously set using SetGlobalMatrixArray.
--*
--Matrix4x4[] GetGlobalMatrixArray(Int32 nameID)
--Gets a global matrix array for all shaders previously set using SetGlobalMatrixArray.
--*
--static method,use '.'
function Shader.GetGlobalMatrixArray() end 

--[Comment]
--overrides:
--*
--Int32 PropertyToID(String name)
--Gets unique identifier for a shader property name.
--params:
--name:    Shader property name.

--*
--static method,use '.'
function Shader.PropertyToID() end 

--[Comment]
--overrides:
--*
--Void WarmupAllShaders()
--Fully load all shaders to prevent future performance hiccups.
--*
--static method,use '.'
function Shader.WarmupAllShaders() end 

Renderer = {} 
--*
--[Comment]
--consturctor for Renderer overrides:
--*
--Renderer.New()
--*

function Renderer.New() end
--*
--[Comment]
-- property: Boolean Renderer.isPartOfStaticBatch	get	
--Has this renderer been statically batched with any other renderers?
Renderer.isPartOfStaticBatch = nil 
--*
--[Comment]
-- property: Matrix4x4 Renderer.worldToLocalMatrix	get	
--Matrix that transforms a point from world space into local space (Read Only).
Renderer.worldToLocalMatrix = nil 
--*
--[Comment]
-- property: Matrix4x4 Renderer.localToWorldMatrix	get	
--Matrix that transforms a point from local space into world space (Read Only).
Renderer.localToWorldMatrix = nil 
--*
--[Comment]
-- property: Boolean Renderer.enabled	get	set	
--Makes the rendered 3D object visible if enabled.
Renderer.enabled = nil 
--*
--[Comment]
-- property: ShadowCastingMode Renderer.shadowCastingMode	get	set	
--Does this object cast shadows?
Renderer.shadowCastingMode = nil 
--*
--[Comment]
-- property: Boolean Renderer.receiveShadows	get	set	
--Does this object receive shadows?
Renderer.receiveShadows = nil 
--*
--[Comment]
-- property: Material Renderer.material	get	set	
--Returns the first instantiated Material assigned to the renderer.
Renderer.material = nil 
--*
--[Comment]
-- property: Material Renderer.sharedMaterial	get	set	
--The shared material of this object.
Renderer.sharedMaterial = nil 
--*
--[Comment]
-- property: Material[] Renderer.materials	get	set	
--Returns all the instantiated materials of this object.
Renderer.materials = nil 
--*
--[Comment]
-- property: Material[] Renderer.sharedMaterials	get	set	
--All the shared materials of this object.
Renderer.sharedMaterials = nil 
--*
--[Comment]
-- property: Bounds Renderer.bounds	get	
--The bounding volume of the renderer (Read Only).
Renderer.bounds = nil 
--*
--[Comment]
-- property: Int32 Renderer.lightmapIndex	get	set	
--The index of the baked lightmap applied to this renderer.
Renderer.lightmapIndex = nil 
--*
--[Comment]
-- property: Int32 Renderer.realtimeLightmapIndex	get	set	
--The index of the realtime lightmap applied to this renderer.
Renderer.realtimeLightmapIndex = nil 
--*
--[Comment]
-- property: Vector4 Renderer.lightmapScaleOffset	get	set	
--The UV scale & offset used for a lightmap.
Renderer.lightmapScaleOffset = nil 
--*
--[Comment]
-- property: MotionVectorGenerationMode Renderer.motionVectorGenerationMode	get	set	
--Specifies the mode for motion vector rendering.
Renderer.motionVectorGenerationMode = nil 
--*
--[Comment]
-- property: Vector4 Renderer.realtimeLightmapScaleOffset	get	set	
--The UV scale & offset used for a realtime lightmap.
Renderer.realtimeLightmapScaleOffset = nil 
--*
--[Comment]
-- property: Boolean Renderer.isVisible	get	
--Is this renderer visible in any camera? (Read Only)
Renderer.isVisible = nil 
--*
--[Comment]
-- property: LightProbeUsage Renderer.lightProbeUsage	get	set	
--The light probe interpolation type.
Renderer.lightProbeUsage = nil 
--*
--[Comment]
-- property: GameObject Renderer.lightProbeProxyVolumeOverride	get	set	
--If set, the Renderer will use the Light Probe Proxy Volume component attached to the source GameObject.
Renderer.lightProbeProxyVolumeOverride = nil 
--*
--[Comment]
-- property: Transform Renderer.probeAnchor	get	set	
--If set, Renderer will use this Transform's position to find the light or reflection probe.
Renderer.probeAnchor = nil 
--*
--[Comment]
-- property: ReflectionProbeUsage Renderer.reflectionProbeUsage	get	set	
--Should reflection probes be used for this Renderer?
Renderer.reflectionProbeUsage = nil 
--*
--[Comment]
-- property: String Renderer.sortingLayerName	get	set	
--Name of the Renderer's sorting layer.
Renderer.sortingLayerName = nil 
--*
--[Comment]
-- property: Int32 Renderer.sortingLayerID	get	set	
--Unique ID of the Renderer's sorting layer.
Renderer.sortingLayerID = nil 
--*
--[Comment]
-- property: Int32 Renderer.sortingOrder	get	set	
--Renderer's order within a sorting layer.
Renderer.sortingOrder = nil 
--*
--[Comment]
-- property: Transform Renderer.transform	get	
--The Transform attached to this GameObject.
Renderer.transform = nil 
--*
--[Comment]
-- property: GameObject Renderer.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
Renderer.gameObject = nil 
--*
--[Comment]
-- property: String Renderer.tag	get	set	
--The tag of this game object.
Renderer.tag = nil 
--*
--[Comment]
-- property: String Renderer.name	get	set	
--The name of the object.
Renderer.name = nil 
--*
--[Comment]
-- property: HideFlags Renderer.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Renderer.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void SetPropertyBlock(MaterialPropertyBlock properties)
--Lets you add per-renderer material parameters without duplicating a material.
--*
--no static method,use ':'
function Renderer:SetPropertyBlock() end 

--[Comment]
--overrides:
--*
--Void GetPropertyBlock(MaterialPropertyBlock dest)
--Get per-renderer material property block.
--*
--no static method,use ':'
function Renderer:GetPropertyBlock() end 

--[Comment]
--overrides:
--*
--Void GetClosestReflectionProbes(List`1 result)
--*
--no static method,use ':'
function Renderer:GetClosestReflectionProbes() end 

WWW = {} 
--*
--[Comment]
--consturctor for WWW overrides:
--*
--WWW.New(String url)
--Creates a WWW request with the given URL.
--params:
--url:    The url to download. Must be '%' escaped.

--*

--WWW.New(String url,WWWForm form)
--Creates a WWW request with the given URL.
--params:
--url:    The url to download. Must be '%' escaped.
--form:    A WWWForm instance containing the form data to post.

--*

--WWW.New(String url,Byte[] postData)
--Creates a WWW request with the given URL.
--params:
--url:    The url to download. Must be '%' escaped.
--postData:    A byte array of data to be posted to the url.

--*

--WWW.New(String url,Byte[] postData,Dictionary`2 headers)
--*

function WWW.New() end
--*
--[Comment]
-- property: Dictionary`2 WWW.responseHeaders	get	
--Dictionary of headers returned by the request.
WWW.responseHeaders = nil 
--*
--[Comment]
-- property: String WWW.text	get	
--Returns the contents of the fetched web page as a string (Read Only).
WWW.text = nil 
--*
--[Comment]
-- property: Byte[] WWW.bytes	get	
--Returns the contents of the fetched web page as a byte array (Read Only).
WWW.bytes = nil 
--*
--[Comment]
-- property: Int32 WWW.size	get	
WWW.size = nil 
--*
--[Comment]
-- property: String WWW.error	get	
--Returns an error message if there was an error during the download (Read Only).
WWW.error = nil 
--*
--[Comment]
-- property: Texture2D WWW.texture	get	
--Returns a Texture2D generated from the downloaded data (Read Only).
WWW.texture = nil 
--*
--[Comment]
-- property: Texture2D WWW.textureNonReadable	get	
--Returns a non-readable Texture2D generated from the downloaded data (Read Only).
WWW.textureNonReadable = nil 
--*
--[Comment]
-- property: AudioClip WWW.audioClip	get	
--Returns a AudioClip generated from the downloaded data (Read Only).
WWW.audioClip = nil 
--*
--[Comment]
-- property: MovieTexture WWW.movie	get	
--Returns a MovieTexture generated from the downloaded data (Read Only).
WWW.movie = nil 
--*
--[Comment]
-- property: Boolean WWW.isDone	get	
--Is the download already finished? (Read Only)
WWW.isDone = nil 
--*
--[Comment]
-- property: Single WWW.progress	get	
--How far has the download progressed (Read Only).
WWW.progress = nil 
--*
--[Comment]
-- property: Single WWW.uploadProgress	get	
--How far has the upload progressed (Read Only).
WWW.uploadProgress = nil 
--*
--[Comment]
-- property: Int32 WWW.bytesDownloaded	get	
--The number of bytes downloaded by this WWW query (read only).
WWW.bytesDownloaded = nil 
--*
--[Comment]
-- property: String WWW.url	get	
--The URL of this WWW request (Read Only).
WWW.url = nil 
--*
--[Comment]
-- property: AssetBundle WWW.assetBundle	get	
--Streams an AssetBundle that can contain any kind of asset from the project folder.
WWW.assetBundle = nil 
--*
--[Comment]
-- property: ThreadPriority WWW.threadPriority	get	set	
--Priority of AssetBundle decompression thread.
WWW.threadPriority = nil 
--*
--[Comment]
--overrides:
--*
--Void Dispose()
--Disposes of an existing WWW object.
--*
--no static method,use ':'
function WWW:Dispose() end 

--[Comment]
--overrides:
--*
--Void InitWWW(String url,Byte[] postData,String[] iHeaders)
--*
--no static method,use ':'
function WWW:InitWWW() end 

--[Comment]
--overrides:
--*
--String EscapeURL(String s)
--Escapes characters in a string to ensure they are URL-friendly.
--params:
--s:    A string with characters to be escaped.
--e:    The text encoding to use.

--*
--String EscapeURL(String s,Encoding e)
--Escapes characters in a string to ensure they are URL-friendly.
--params:
--s:    A string with characters to be escaped.
--e:    The text encoding to use.

--*
--static method,use '.'
function WWW.EscapeURL() end 

--[Comment]
--overrides:
--*
--String UnEscapeURL(String s)
--Converts URL-friendly escape sequences back to normal text.
--params:
--s:    A string containing escaped characters.
--e:    The text encoding to use.

--*
--String UnEscapeURL(String s,Encoding e)
--Converts URL-friendly escape sequences back to normal text.
--params:
--s:    A string containing escaped characters.
--e:    The text encoding to use.

--*
--static method,use '.'
function WWW.UnEscapeURL() end 

--[Comment]
--overrides:
--*
--AudioClip GetAudioClip(Boolean threeD)
--Returns an AudioClip generated from the downloaded data (Read Only).
--params:
--threeD:    Use this to specify whether the clip should be a 2D or 3D clip the .audioClip property defaults to 3D.
--stream:    Sets whether the clip should be completely downloaded before it's ready to play (false) or the stream can be played even if only part of the clip is downloaded (true). The latter will disable seeking on the clip (with .time and/or .timeSamples).
--audioType:    The AudioType of the content your downloading. If this is not set Unity will try to determine the type from URL.

--*
--AudioClip GetAudioClip(Boolean threeD,Boolean stream)
--Returns an AudioClip generated from the downloaded data (Read Only).
--params:
--threeD:    Use this to specify whether the clip should be a 2D or 3D clip the .audioClip property defaults to 3D.
--stream:    Sets whether the clip should be completely downloaded before it's ready to play (false) or the stream can be played even if only part of the clip is downloaded (true). The latter will disable seeking on the clip (with .time and/or .timeSamples).
--audioType:    The AudioType of the content your downloading. If this is not set Unity will try to determine the type from URL.

--*
--AudioClip GetAudioClip(Boolean threeD,Boolean stream,AudioType audioType)
--Returns an AudioClip generated from the downloaded data (Read Only).
--params:
--threeD:    Use this to specify whether the clip should be a 2D or 3D clip the .audioClip property defaults to 3D.
--stream:    Sets whether the clip should be completely downloaded before it's ready to play (false) or the stream can be played even if only part of the clip is downloaded (true). The latter will disable seeking on the clip (with .time and/or .timeSamples).
--audioType:    The AudioType of the content your downloading. If this is not set Unity will try to determine the type from URL.

--*
--no static method,use ':'
function WWW:GetAudioClip() end 

--[Comment]
--overrides:
--*
--AudioClip GetAudioClipCompressed()
--Returns an AudioClip generated from the downloaded data that is compressed in memory (Read Only).
--params:
--threeD:    Use this to specify whether the clip should be a 2D or 3D clip.
--audioType:    The AudioType of the content your downloading. If this is not set Unity will try to determine the type from URL.

--*
--AudioClip GetAudioClipCompressed(Boolean threeD)
--Returns an AudioClip generated from the downloaded data that is compressed in memory (Read Only).
--params:
--threeD:    Use this to specify whether the clip should be a 2D or 3D clip.
--audioType:    The AudioType of the content your downloading. If this is not set Unity will try to determine the type from URL.

--*
--AudioClip GetAudioClipCompressed(Boolean threeD,AudioType audioType)
--Returns an AudioClip generated from the downloaded data that is compressed in memory (Read Only).
--params:
--threeD:    Use this to specify whether the clip should be a 2D or 3D clip.
--audioType:    The AudioType of the content your downloading. If this is not set Unity will try to determine the type from URL.

--*
--no static method,use ':'
function WWW:GetAudioClipCompressed() end 

--[Comment]
--overrides:
--*
--Void LoadImageIntoTexture(Texture2D tex)
--Replaces the contents of an existing Texture2D with an image from the downloaded data.
--params:
--tex:    An existing texture object to be overwritten with the image data.

--*
--no static method,use ':'
function WWW:LoadImageIntoTexture() end 

--[Comment]
--overrides:
--*
--WWW LoadFromCacheOrDownload(String url,Int32 version)
--Loads an AssetBundle with the specified version number from the cache. If the AssetBundle is not currently cached, it will automatically be downloaded and stored in the cache for future retrieval from local storage.
--params:
--url:    The URL to download the AssetBundle from, if it is not present in the cache. Must be '%' escaped.
--version:    Version of the AssetBundle. The file will only be loaded from the disk cache if it has previously been downloaded with the same version parameter. By incrementing the version number requested by your application, you can force Caching to download a new copy of the AssetBundle from url.
--crc:    An optional CRC-32 Checksum of the uncompressed contents. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match. You can use this to avoid data corruption from bad downloads or users tampering with the cached files on disk. If the CRC does not match, Unity will try to redownload the data, and if the CRC on the server does not match it will fail with an error. Look at the error string returned to see the correct CRC value to use for an AssetBundle.

--*
--WWW LoadFromCacheOrDownload(String url,Int32 version,UInt32 crc)
--Loads an AssetBundle with the specified version number from the cache. If the AssetBundle is not currently cached, it will automatically be downloaded and stored in the cache for future retrieval from local storage.
--params:
--url:    The URL to download the AssetBundle from, if it is not present in the cache. Must be '%' escaped.
--version:    Version of the AssetBundle. The file will only be loaded from the disk cache if it has previously been downloaded with the same version parameter. By incrementing the version number requested by your application, you can force Caching to download a new copy of the AssetBundle from url.
--crc:    An optional CRC-32 Checksum of the uncompressed contents. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match. You can use this to avoid data corruption from bad downloads or users tampering with the cached files on disk. If the CRC does not match, Unity will try to redownload the data, and if the CRC on the server does not match it will fail with an error. Look at the error string returned to see the correct CRC value to use for an AssetBundle.

--*
--WWW LoadFromCacheOrDownload(String url,Hash128 hash)
--*
--WWW LoadFromCacheOrDownload(String url,Hash128 hash,UInt32 crc)
--*
--static method,use '.'
function WWW.LoadFromCacheOrDownload() end 

Screen = {} 
--*
--[Comment]
--consturctor for Screen overrides:
--*
--Screen.New()
--*

function Screen.New() end
--*
--[Comment]
-- property: Resolution[] Screen.resolutions	get	
--All fullscreen resolutions supported by the monitor (Read Only).
Screen.resolutions = nil 
--*
--[Comment]
-- property: Resolution Screen.currentResolution	get	
--The current screen resolution (Read Only).
Screen.currentResolution = nil 
--*
--[Comment]
-- property: Int32 Screen.width	get	
--The current width of the screen window in pixels (Read Only).
Screen.width = nil 
--*
--[Comment]
-- property: Int32 Screen.height	get	
--The current height of the screen window in pixels (Read Only).
Screen.height = nil 
--*
--[Comment]
-- property: Single Screen.dpi	get	
--The current DPI of the screen / device (Read Only).
Screen.dpi = nil 
--*
--[Comment]
-- property: Boolean Screen.fullScreen	get	set	
--Is the game running fullscreen?
Screen.fullScreen = nil 
--*
--[Comment]
-- property: Boolean Screen.autorotateToPortrait	get	set	
--Allow auto-rotation to portrait?
Screen.autorotateToPortrait = nil 
--*
--[Comment]
-- property: Boolean Screen.autorotateToPortraitUpsideDown	get	set	
--Allow auto-rotation to portrait, upside down?
Screen.autorotateToPortraitUpsideDown = nil 
--*
--[Comment]
-- property: Boolean Screen.autorotateToLandscapeLeft	get	set	
--Allow auto-rotation to landscape left?
Screen.autorotateToLandscapeLeft = nil 
--*
--[Comment]
-- property: Boolean Screen.autorotateToLandscapeRight	get	set	
--Allow auto-rotation to landscape right?
Screen.autorotateToLandscapeRight = nil 
--*
--[Comment]
-- property: ScreenOrientation Screen.orientation	get	set	
--Specifies logical orientation of the screen.
Screen.orientation = nil 
--*
--[Comment]
-- property: Int32 Screen.sleepTimeout	get	set	
--A power saving setting, allowing the screen to dim some time after the last active user interaction.
Screen.sleepTimeout = nil 
--*
--[Comment]
--overrides:
--*
--Void SetResolution(Int32 width,Int32 height,Boolean fullscreen,Int32 preferredRefreshRate)
--Switches the screen resolution.
--*
--Void SetResolution(Int32 width,Int32 height,Boolean fullscreen)
--Switches the screen resolution.
--*
--static method,use '.'
function Screen.SetResolution() end 

CameraClearFlags = {} 

CameraClearFlags.Skybox = nil;

CameraClearFlags.Color = nil;

CameraClearFlags.SolidColor = nil;

CameraClearFlags.Depth = nil;

CameraClearFlags.Nothing = nil;

AudioClip = {} 
--*
--[Comment]
--consturctor for AudioClip overrides:
--*
--AudioClip.New()
--*

function AudioClip.New() end
--*
--[Comment]
-- property: Single AudioClip.length	get	
--The length of the audio clip in seconds. (Read Only)
AudioClip.length = nil 
--*
--[Comment]
-- property: Int32 AudioClip.samples	get	
--The length of the audio clip in samples. (Read Only)
AudioClip.samples = nil 
--*
--[Comment]
-- property: Int32 AudioClip.channels	get	
--The number of channels in the audio clip. (Read Only)
AudioClip.channels = nil 
--*
--[Comment]
-- property: Int32 AudioClip.frequency	get	
--The sample frequency of the clip in Hertz. (Read Only)
AudioClip.frequency = nil 
--*
--[Comment]
-- property: AudioClipLoadType AudioClip.loadType	get	
--The load type of the clip (read-only).
AudioClip.loadType = nil 
--*
--[Comment]
-- property: Boolean AudioClip.preloadAudioData	get	
--Preloads audio data of the clip when the clip asset is loaded. When this flag is off, scripts have to call AudioClip.LoadAudioData() to load the data before the clip can be played. Properties like length, channels and format are available before the audio data has been loaded.
AudioClip.preloadAudioData = nil 
--*
--[Comment]
-- property: AudioDataLoadState AudioClip.loadState	get	
--Returns the current load state of the audio data associated with an AudioClip.
AudioClip.loadState = nil 
--*
--[Comment]
-- property: Boolean AudioClip.loadInBackground	get	
--Corresponding to the "Load In Background" flag in the inspector, when this flag is set, the loading will happen delayed without blocking the main thread.
AudioClip.loadInBackground = nil 
--*
--[Comment]
-- property: String AudioClip.name	get	set	
--The name of the object.
AudioClip.name = nil 
--*
--[Comment]
-- property: HideFlags AudioClip.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
AudioClip.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Boolean LoadAudioData()
--Loads the audio data of a clip. Clips that have "Preload Audio Data" set will load the audio data automatically.
--*
--no static method,use ':'
function AudioClip:LoadAudioData() end 

--[Comment]
--overrides:
--*
--Boolean UnloadAudioData()
--Unloads the audio data associated with the clip. This works only for AudioClips that are based on actual sound file assets.
--*
--no static method,use ':'
function AudioClip:UnloadAudioData() end 

--[Comment]
--overrides:
--*
--Boolean GetData(Single[] data,Int32 offsetSamples)
--Fills an array with sample data from the clip.
--*
--no static method,use ':'
function AudioClip:GetData() end 

--[Comment]
--overrides:
--*
--Boolean SetData(Single[] data,Int32 offsetSamples)
--Set sample data in a clip.
--*
--no static method,use ':'
function AudioClip:SetData() end 

--[Comment]
--overrides:
--*
--AudioClip Create(String name,Int32 lengthSamples,Int32 channels,Int32 frequency,Boolean stream)
--Creates a user AudioClip with a name and with the given length in samples, channels and frequency.
--params:
--name:    Name of clip.
--lengthSamples:    Number of sample frames.
--channels:    Number of channels per frame.
--frequency:    Sample frequency of clip.
--_3D:    Audio clip is played back in 3D.
--stream:    True if clip is streamed, that is if the pcmreadercallback generates data on the fly.
--pcmreadercallback:    This callback is invoked to generate a block of sample data. Non-streamed clips call this only once at creation time while streamed clips call this continuously.
--pcmsetpositioncallback:    This callback is invoked whenever the clip loops or changes playback position.

--*
--AudioClip Create(String name,Int32 lengthSamples,Int32 channels,Int32 frequency,Boolean stream,PCMReaderCallback pcmreadercallback)
--*
--AudioClip Create(String name,Int32 lengthSamples,Int32 channels,Int32 frequency,Boolean stream,PCMReaderCallback pcmreadercallback,PCMSetPositionCallback pcmsetpositioncallback)
--*
--static method,use '.'
function AudioClip.Create() end 

AssetBundle = {} 
--*
--[Comment]
--consturctor for AssetBundle overrides:
--*
--AssetBundle.New()
--*

function AssetBundle.New() end
--*
--[Comment]
-- property: Object AssetBundle.mainAsset	get	
--Main asset that was supplied when building the asset bundle (Read Only).
AssetBundle.mainAsset = nil 
--*
--[Comment]
-- property: Boolean AssetBundle.isStreamedSceneAssetBundle	get	
--Return true if the AssetBundle is a streamed scene AssetBundle.
AssetBundle.isStreamedSceneAssetBundle = nil 
--*
--[Comment]
-- property: String AssetBundle.name	get	set	
--The name of the object.
AssetBundle.name = nil 
--*
--[Comment]
-- property: HideFlags AssetBundle.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
AssetBundle.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--AssetBundleCreateRequest LoadFromFileAsync(String path,UInt32 crc,UInt64 offset)
--Asynchronously loads an AssetBundle from a file on disk.
--params:
--path:    Path of the file on disk.
--crc:    An optional CRC-32 checksum of the uncompressed content. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match.
--offset:    An optional byte offset. This value specifies where to start reading the AssetBundle from.

--*
--AssetBundleCreateRequest LoadFromFileAsync(String path,UInt32 crc)
--*
--AssetBundleCreateRequest LoadFromFileAsync(String path)
--*
--static method,use '.'
function AssetBundle.LoadFromFileAsync() end 

--[Comment]
--overrides:
--*
--AssetBundle LoadFromFile(String path,UInt32 crc,UInt64 offset)
--Synchronously loads an AssetBundle from a file on disk.
--params:
--path:    Path of the file on disk.
--crc:    An optional CRC-32 checksum of the uncompressed content. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match.
--offset:    An optional byte offset. This value specifies where to start reading the AssetBundle from.

--*
--AssetBundle LoadFromFile(String path,UInt32 crc)
--*
--AssetBundle LoadFromFile(String path)
--*
--static method,use '.'
function AssetBundle.LoadFromFile() end 

--[Comment]
--overrides:
--*
--AssetBundleCreateRequest LoadFromMemoryAsync(Byte[] binary,UInt32 crc)
--Asynchronously create an AssetBundle from a memory region.
--params:
--binary:    Array of bytes with the AssetBundle data.
--crc:    An optional CRC-32 checksum of the uncompressed content. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match.

--*
--AssetBundleCreateRequest LoadFromMemoryAsync(Byte[] binary)
--*
--static method,use '.'
function AssetBundle.LoadFromMemoryAsync() end 

--[Comment]
--overrides:
--*
--AssetBundle LoadFromMemory(Byte[] binary,UInt32 crc)
--Synchronously create an AssetBundle from a memory region.
--params:
--binary:    Array of bytes with the AssetBundle data.
--crc:    An optional CRC-32 checksum of the uncompressed content. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match.

--*
--AssetBundle LoadFromMemory(Byte[] binary)
--*
--static method,use '.'
function AssetBundle.LoadFromMemory() end 

--[Comment]
--overrides:
--*
--Boolean Contains(String name)
--Check if an AssetBundle contains a specific object.
--*
--no static method,use ':'
function AssetBundle:Contains() end 

--[Comment]
--overrides:
--*
--Object LoadAsset(String name)
--Loads asset with name from the bundle.
--*
--Object LoadAsset(String name,Type type)
--Loads asset with name of a given type from the bundle.
--*
--no static method,use ':'
function AssetBundle:LoadAsset() end 

--[Comment]
--overrides:
--*
--AssetBundleRequest LoadAssetAsync(String name)
--Asynchronously loads asset with name from the bundle.
--*
--AssetBundleRequest LoadAssetAsync(String name,Type type)
--Asynchronously loads asset with name of a given type from the bundle.
--*
--no static method,use ':'
function AssetBundle:LoadAssetAsync() end 

--[Comment]
--overrides:
--*
--Object[] LoadAssetWithSubAssets(String name)
--Loads asset and sub assets with name from the bundle.
--*
--Object[] LoadAssetWithSubAssets(String name,Type type)
--Loads asset and sub assets with name of a given type from the bundle.
--*
--no static method,use ':'
function AssetBundle:LoadAssetWithSubAssets() end 

--[Comment]
--overrides:
--*
--AssetBundleRequest LoadAssetWithSubAssetsAsync(String name)
--Loads asset with sub assets with name from the bundle asynchronously.
--*
--AssetBundleRequest LoadAssetWithSubAssetsAsync(String name,Type type)
--Loads asset with sub assets with name of a given type from the bundle asynchronously.
--*
--no static method,use ':'
function AssetBundle:LoadAssetWithSubAssetsAsync() end 

--[Comment]
--overrides:
--*
--Object[] LoadAllAssets()
--Loads all assets contained in the asset bundle.
--*
--Object[] LoadAllAssets(Type type)
--Loads all assets contained in the asset bundle that inherit from type.
--*
--no static method,use ':'
function AssetBundle:LoadAllAssets() end 

--[Comment]
--overrides:
--*
--AssetBundleRequest LoadAllAssetsAsync()
--Loads all assets contained in the asset bundle asynchronously.
--*
--AssetBundleRequest LoadAllAssetsAsync(Type type)
--Loads all assets contained in the asset bundle that inherit from type asynchronously.
--*
--no static method,use ':'
function AssetBundle:LoadAllAssetsAsync() end 

--[Comment]
--overrides:
--*
--Void Unload(Boolean unloadAllLoadedObjects)
--Unloads all assets in the bundle.
--*
--no static method,use ':'
function AssetBundle:Unload() end 

--[Comment]
--overrides:
--*
--String[] GetAllAssetNames()
--Return all asset names in the AssetBundle.
--*
--no static method,use ':'
function AssetBundle:GetAllAssetNames() end 

--[Comment]
--overrides:
--*
--String[] GetAllScenePaths()
--Return all the scene asset paths (paths to *.unity assets) in the AssetBundle.
--*
--no static method,use ':'
function AssetBundle:GetAllScenePaths() end 

ParticleSystem = {} 
--*
--[Comment]
--consturctor for ParticleSystem overrides:
--*
--ParticleSystem.New()
--*

function ParticleSystem.New() end
--*
--[Comment]
-- property: Boolean ParticleSystem.isPlaying	get	
--Is the particle system playing right now ?
ParticleSystem.isPlaying = nil 
--*
--[Comment]
-- property: Boolean ParticleSystem.isEmitting	get	
--Is the particle system currently emitting particles? A particle system may stop emitting when its emission module has finished, it has been paused or if the system has been stopped using ParticleSystem.Stop|Stop with the ParticleSystemStopBehavior.StopEmitting|StopEmitting flag. Resume emitting by calling ParticleSystem.Play|Play.
ParticleSystem.isEmitting = nil 
--*
--[Comment]
-- property: Boolean ParticleSystem.isStopped	get	
--Is the particle system stopped right now ?
ParticleSystem.isStopped = nil 
--*
--[Comment]
-- property: Boolean ParticleSystem.isPaused	get	
--Is the particle system paused right now ?
ParticleSystem.isPaused = nil 
--*
--[Comment]
-- property: Single ParticleSystem.time	get	set	
--Playback position in seconds.
ParticleSystem.time = nil 
--*
--[Comment]
-- property: Int32 ParticleSystem.particleCount	get	
--The current number of particles (Read Only).
ParticleSystem.particleCount = nil 
--*
--[Comment]
-- property: UInt32 ParticleSystem.randomSeed	get	set	
--Override the random seed used for the particle system emission.
ParticleSystem.randomSeed = nil 
--*
--[Comment]
-- property: Boolean ParticleSystem.useAutoRandomSeed	get	set	
--Controls whether the Particle System uses an automatically-generated random number to seed the random number generator.
ParticleSystem.useAutoRandomSeed = nil 
--*
--[Comment]
-- property: MainModule ParticleSystem.main	get	
--Access the main particle system settings.
ParticleSystem.main = nil 
--*
--[Comment]
-- property: EmissionModule ParticleSystem.emission	get	
--Access the particle system emission module.
ParticleSystem.emission = nil 
--*
--[Comment]
-- property: ShapeModule ParticleSystem.shape	get	
--Access the particle system shape module.
ParticleSystem.shape = nil 
--*
--[Comment]
-- property: VelocityOverLifetimeModule ParticleSystem.velocityOverLifetime	get	
--Access the particle system velocity over lifetime module.
ParticleSystem.velocityOverLifetime = nil 
--*
--[Comment]
-- property: LimitVelocityOverLifetimeModule ParticleSystem.limitVelocityOverLifetime	get	
--Access the particle system limit velocity over lifetime module.
ParticleSystem.limitVelocityOverLifetime = nil 
--*
--[Comment]
-- property: InheritVelocityModule ParticleSystem.inheritVelocity	get	
--Access the particle system velocity inheritance module.
ParticleSystem.inheritVelocity = nil 
--*
--[Comment]
-- property: ForceOverLifetimeModule ParticleSystem.forceOverLifetime	get	
--Access the particle system force over lifetime module.
ParticleSystem.forceOverLifetime = nil 
--*
--[Comment]
-- property: ColorOverLifetimeModule ParticleSystem.colorOverLifetime	get	
--Access the particle system color over lifetime module.
ParticleSystem.colorOverLifetime = nil 
--*
--[Comment]
-- property: ColorBySpeedModule ParticleSystem.colorBySpeed	get	
--Access the particle system color by lifetime module.
ParticleSystem.colorBySpeed = nil 
--*
--[Comment]
-- property: SizeOverLifetimeModule ParticleSystem.sizeOverLifetime	get	
--Access the particle system size over lifetime module.
ParticleSystem.sizeOverLifetime = nil 
--*
--[Comment]
-- property: SizeBySpeedModule ParticleSystem.sizeBySpeed	get	
--Access the particle system size by speed module.
ParticleSystem.sizeBySpeed = nil 
--*
--[Comment]
-- property: RotationOverLifetimeModule ParticleSystem.rotationOverLifetime	get	
--Access the particle system rotation over lifetime module.
ParticleSystem.rotationOverLifetime = nil 
--*
--[Comment]
-- property: RotationBySpeedModule ParticleSystem.rotationBySpeed	get	
--Access the particle system rotation by speed  module.
ParticleSystem.rotationBySpeed = nil 
--*
--[Comment]
-- property: ExternalForcesModule ParticleSystem.externalForces	get	
--Access the particle system external forces module.
ParticleSystem.externalForces = nil 
--*
--[Comment]
-- property: NoiseModule ParticleSystem.noise	get	
--Access the particle system noise module.
ParticleSystem.noise = nil 
--*
--[Comment]
-- property: CollisionModule ParticleSystem.collision	get	
--Access the particle system collision module.
ParticleSystem.collision = nil 
--*
--[Comment]
-- property: TriggerModule ParticleSystem.trigger	get	
--Access the particle system trigger module.
ParticleSystem.trigger = nil 
--*
--[Comment]
-- property: SubEmittersModule ParticleSystem.subEmitters	get	
--Access the particle system sub emitters module.
ParticleSystem.subEmitters = nil 
--*
--[Comment]
-- property: TextureSheetAnimationModule ParticleSystem.textureSheetAnimation	get	
--Access the particle system texture sheet animation module.
ParticleSystem.textureSheetAnimation = nil 
--*
--[Comment]
-- property: LightsModule ParticleSystem.lights	get	
--Access the particle system lights module.
ParticleSystem.lights = nil 
--*
--[Comment]
-- property: TrailModule ParticleSystem.trails	get	
--Access the particle system trails module.
ParticleSystem.trails = nil 
--*
--[Comment]
-- property: Transform ParticleSystem.transform	get	
--The Transform attached to this GameObject.
ParticleSystem.transform = nil 
--*
--[Comment]
-- property: GameObject ParticleSystem.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
ParticleSystem.gameObject = nil 
--*
--[Comment]
-- property: String ParticleSystem.tag	get	set	
--The tag of this game object.
ParticleSystem.tag = nil 
--*
--[Comment]
-- property: String ParticleSystem.name	get	set	
--The name of the object.
ParticleSystem.name = nil 
--*
--[Comment]
-- property: HideFlags ParticleSystem.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
ParticleSystem.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void SetParticles(Particle[] particles,Int32 size)
--*
--no static method,use ':'
function ParticleSystem:SetParticles() end 

--[Comment]
--overrides:
--*
--Int32 GetParticles(Particle[] particles)
--*
--no static method,use ':'
function ParticleSystem:GetParticles() end 

--[Comment]
--overrides:
--*
--Void SetCustomParticleData(List`1 customData,ParticleSystemCustomData streamIndex)
--*
--no static method,use ':'
function ParticleSystem:SetCustomParticleData() end 

--[Comment]
--overrides:
--*
--Int32 GetCustomParticleData(List`1 customData,ParticleSystemCustomData streamIndex)
--*
--no static method,use ':'
function ParticleSystem:GetCustomParticleData() end 

--[Comment]
--overrides:
--*
--Void Simulate(Single t,Boolean withChildren,Boolean restart)
--*
--Void Simulate(Single t,Boolean withChildren)
--*
--Void Simulate(Single t)
--*
--Void Simulate(Single t,Boolean withChildren,Boolean restart,Boolean fixedTimeStep)
--Fastforwards the particle system by simulating particles over given period of time, then pauses it.
--params:
--t:    Time period in seconds to advance the ParticleSystem simulation by. If restart is true, the ParticleSystem will be reset to 0 time, and then advanced by this value. If restart is false, the ParticleSystem simulation will be advanced in time from its current state by this value.
--withChildren:    Fastforward all child particle systems as well.
--restart:    Restart and start from the beginning.
--fixedTimeStep:    Only update the system at fixed intervals, based on the value in "Fixed Time" in the Time options.

--*
--no static method,use ':'
function ParticleSystem:Simulate() end 

--[Comment]
--overrides:
--*
--Void Play()
--*
--Void Play(Boolean withChildren)
--Starts the particle system.
--params:
--withChildren:    Play all child particle systems as well.

--*
--no static method,use ':'
function ParticleSystem:Play() end 

--[Comment]
--overrides:
--*
--Void Stop(Boolean withChildren)
--Stops playing the particle system using the supplied stop behaviour.
--params:
--withChildren:    Stop all child particle systems as well.
--stopBehavior:    Stop emitting or stop emitting and clear the system.

--*
--Void Stop()
--*
--Void Stop(Boolean withChildren,ParticleSystemStopBehavior stopBehavior)
--Stops playing the particle system using the supplied stop behaviour.
--params:
--withChildren:    Stop all child particle systems as well.
--stopBehavior:    Stop emitting or stop emitting and clear the system.

--*
--no static method,use ':'
function ParticleSystem:Stop() end 

--[Comment]
--overrides:
--*
--Void Pause()
--*
--Void Pause(Boolean withChildren)
--Pauses the system so no new particles are emitted and the existing particles are not updated.
--params:
--withChildren:    Pause all child particle systems as well.

--*
--no static method,use ':'
function ParticleSystem:Pause() end 

--[Comment]
--overrides:
--*
--Void Clear()
--*
--Void Clear(Boolean withChildren)
--Remove all particles in the particle system.
--params:
--withChildren:    Clear all child particle systems as well.

--*
--no static method,use ':'
function ParticleSystem:Clear() end 

--[Comment]
--overrides:
--*
--Boolean IsAlive()
--*
--Boolean IsAlive(Boolean withChildren)
--Does the system have any live particles (or will produce more)?
--params:
--withChildren:    Check all child particle systems as well.

--*
--no static method,use ':'
function ParticleSystem:IsAlive() end 

--[Comment]
--overrides:
--*
--Void Emit(Int32 count)
--Emit count particles immediately.
--params:
--count:    Number of particles to emit.

--*
--Void Emit(EmitParams emitParams,Int32 count)
--*
--no static method,use ':'
function ParticleSystem:Emit() end 

AsyncOperation = {} 
--*
--[Comment]
--consturctor for AsyncOperation overrides:
--*
--AsyncOperation.New()
--*

function AsyncOperation.New() end
--*
--[Comment]
-- property: Boolean AsyncOperation.isDone	get	
--Has the operation finished? (Read Only)
AsyncOperation.isDone = nil 
--*
--[Comment]
-- property: Single AsyncOperation.progress	get	
--What's the operation's progress. (Read Only)
AsyncOperation.progress = nil 
--*
--[Comment]
-- property: Int32 AsyncOperation.priority	get	set	
--Priority lets you tweak in which order async operation calls will be performed.
AsyncOperation.priority = nil 
--*
--[Comment]
-- property: Boolean AsyncOperation.allowSceneActivation	get	set	
--Allow scenes to be activated as soon as it is ready.
AsyncOperation.allowSceneActivation = nil 
--*
LightType = {} 

LightType.Spot = nil;

LightType.Directional = nil;

LightType.Point = nil;

LightType.Area = nil;

SleepTimeout = {} 
--*
--[Comment]
--consturctor for SleepTimeout overrides:
--*
--SleepTimeout.New()
--*

function SleepTimeout.New() end
--*
DirectorPlayer = {} 
--*
--[Comment]
--consturctor for DirectorPlayer overrides:
--*
--DirectorPlayer.New()
--*

function DirectorPlayer.New() end
--*
--[Comment]
-- property: Boolean DirectorPlayer.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
DirectorPlayer.enabled = nil 
--*
--[Comment]
-- property: Boolean DirectorPlayer.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
DirectorPlayer.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform DirectorPlayer.transform	get	
--The Transform attached to this GameObject.
DirectorPlayer.transform = nil 
--*
--[Comment]
-- property: GameObject DirectorPlayer.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
DirectorPlayer.gameObject = nil 
--*
--[Comment]
-- property: String DirectorPlayer.tag	get	set	
--The tag of this game object.
DirectorPlayer.tag = nil 
--*
--[Comment]
-- property: String DirectorPlayer.name	get	set	
--The name of the object.
DirectorPlayer.name = nil 
--*
--[Comment]
-- property: HideFlags DirectorPlayer.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
DirectorPlayer.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void Play(Playable pStruct)
--Starts playing a Experimental.Director.Playable tree.
--params:
--playable:    The root Experimental.Director.Playable in the tree.

--*
--no static method,use ':'
function DirectorPlayer:Play() end 

--[Comment]
--overrides:
--*
--Void Stop()
--Stop the playback of the Player and Experimental.Director.Playable.
--*
--no static method,use ':'
function DirectorPlayer:Stop() end 

--[Comment]
--overrides:
--*
--Void SetTime(Double time)
--Sets the Player's local time.
--params:
--time:    The new local time.

--*
--no static method,use ':'
function DirectorPlayer:SetTime() end 

--[Comment]
--overrides:
--*
--Double GetTime()
--Returns the Player's current local time.
--*
--no static method,use ':'
function DirectorPlayer:GetTime() end 

--[Comment]
--overrides:
--*
--Void SetTimeUpdateMode(DirectorUpdateMode mode)
--Specifies the way the Player's will increment when it is playing.
--*
--no static method,use ':'
function DirectorPlayer:SetTimeUpdateMode() end 

--[Comment]
--overrides:
--*
--DirectorUpdateMode GetTimeUpdateMode()
--Returns the current Experimental.Director.DirectorUpdateMode.
--*
--no static method,use ':'
function DirectorPlayer:GetTimeUpdateMode() end 

Animator = {} 
--*
--[Comment]
--consturctor for Animator overrides:
--*
--Animator.New()
--*

function Animator.New() end
--*
--[Comment]
-- property: Boolean Animator.isOptimizable	get	
--Returns true if the current rig is optimizable with AnimatorUtility.OptimizeTransformHierarchy.
Animator.isOptimizable = nil 
--*
--[Comment]
-- property: Boolean Animator.isHuman	get	
--Returns true if the current rig is humanoid, false if it is generic.
Animator.isHuman = nil 
--*
--[Comment]
-- property: Boolean Animator.hasRootMotion	get	
--Returns true if the current rig has root motion.
Animator.hasRootMotion = nil 
--*
--[Comment]
-- property: Single Animator.humanScale	get	
--Returns the scale of the current Avatar for a humanoid rig, (1 by default if the rig is generic).
Animator.humanScale = nil 
--*
--[Comment]
-- property: Boolean Animator.isInitialized	get	
--Returns whether the animator is initialized successfully.
Animator.isInitialized = nil 
--*
--[Comment]
-- property: Vector3 Animator.deltaPosition	get	
--Gets the avatar delta position for the last evaluated frame.
Animator.deltaPosition = nil 
--*
--[Comment]
-- property: Quaternion Animator.deltaRotation	get	
--Gets the avatar delta rotation for the last evaluated frame.
Animator.deltaRotation = nil 
--*
--[Comment]
-- property: Vector3 Animator.velocity	get	
--Gets the avatar velocity  for the last evaluated frame.
Animator.velocity = nil 
--*
--[Comment]
-- property: Vector3 Animator.angularVelocity	get	
--Gets the avatar angular velocity for the last evaluated frame.
Animator.angularVelocity = nil 
--*
--[Comment]
-- property: Vector3 Animator.rootPosition	get	set	
--The root position, the position of the game object.
Animator.rootPosition = nil 
--*
--[Comment]
-- property: Quaternion Animator.rootRotation	get	set	
--The root rotation, the rotation of the game object.
Animator.rootRotation = nil 
--*
--[Comment]
-- property: Boolean Animator.applyRootMotion	get	set	
--Should root motion be applied?
Animator.applyRootMotion = nil 
--*
--[Comment]
-- property: Boolean Animator.linearVelocityBlending	get	set	
--When linearVelocityBlending is set to true, the root motion velocity and angular velocity will be blended linearly.
Animator.linearVelocityBlending = nil 
--*
--[Comment]
-- property: AnimatorUpdateMode Animator.updateMode	get	set	
--Specifies the update mode of the Animator.
Animator.updateMode = nil 
--*
--[Comment]
-- property: Boolean Animator.hasTransformHierarchy	get	
--Returns true if the object has a transform hierarchy.
Animator.hasTransformHierarchy = nil 
--*
--[Comment]
-- property: Single Animator.gravityWeight	get	
--The current gravity weight based on current animations that are played.
Animator.gravityWeight = nil 
--*
--[Comment]
-- property: Vector3 Animator.bodyPosition	get	set	
--The position of the body center of mass.
Animator.bodyPosition = nil 
--*
--[Comment]
-- property: Quaternion Animator.bodyRotation	get	set	
--The rotation of the body center of mass.
Animator.bodyRotation = nil 
--*
--[Comment]
-- property: Boolean Animator.stabilizeFeet	get	set	
--Automatic stabilization of feet during transition and blending.
Animator.stabilizeFeet = nil 
--*
--[Comment]
-- property: Int32 Animator.layerCount	get	
--See IAnimatorControllerPlayable.layerCount.
Animator.layerCount = nil 
--*
--[Comment]
-- property: AnimatorControllerParameter[] Animator.parameters	get	
--Read only acces to the AnimatorControllerParameters used by the animator.
Animator.parameters = nil 
--*
--[Comment]
-- property: Int32 Animator.parameterCount	get	
--See IAnimatorControllerPlayable.parameterCount.
Animator.parameterCount = nil 
--*
--[Comment]
-- property: Single Animator.feetPivotActive	get	set	
--Blends pivot point between body center of mass and feet pivot. At 0%, the blending point is body center of mass. At 100%, the blending point is feet pivot.
Animator.feetPivotActive = nil 
--*
--[Comment]
-- property: Single Animator.pivotWeight	get	
--Gets the pivot weight.
Animator.pivotWeight = nil 
--*
--[Comment]
-- property: Vector3 Animator.pivotPosition	get	
--Get the current position of the pivot.
Animator.pivotPosition = nil 
--*
--[Comment]
-- property: Boolean Animator.isMatchingTarget	get	
--If automatic matching is active.
Animator.isMatchingTarget = nil 
--*
--[Comment]
-- property: Single Animator.speed	get	set	
--The playback speed of the Animator. 1 is normal playback speed.
Animator.speed = nil 
--*
--[Comment]
-- property: Vector3 Animator.targetPosition	get	
--Returns the position of the target specified by SetTarget(AvatarTarget targetIndex, float targetNormalizedTime)).
Animator.targetPosition = nil 
--*
--[Comment]
-- property: Quaternion Animator.targetRotation	get	
--Returns the rotation of the target specified by SetTarget(AvatarTarget targetIndex, float targetNormalizedTime)).
Animator.targetRotation = nil 
--*
--[Comment]
-- property: AnimatorCullingMode Animator.cullingMode	get	set	
--Controls culling of this Animator component.
Animator.cullingMode = nil 
--*
--[Comment]
-- property: Single Animator.playbackTime	get	set	
--Sets the playback position in the recording buffer.
Animator.playbackTime = nil 
--*
--[Comment]
-- property: Single Animator.recorderStartTime	get	set	
--Start time of the first frame of the buffer relative to the frame at which StartRecording was called.
Animator.recorderStartTime = nil 
--*
--[Comment]
-- property: Single Animator.recorderStopTime	get	set	
--End time of the recorded clip relative to when StartRecording was called.
Animator.recorderStopTime = nil 
--*
--[Comment]
-- property: AnimatorRecorderMode Animator.recorderMode	get	
--Gets the mode of the Animator recorder.
Animator.recorderMode = nil 
--*
--[Comment]
-- property: RuntimeAnimatorController Animator.runtimeAnimatorController	get	set	
--The runtime representation of AnimatorController that controls the Animator.
Animator.runtimeAnimatorController = nil 
--*
--[Comment]
-- property: Avatar Animator.avatar	get	set	
--Gets/Sets the current Avatar.
Animator.avatar = nil 
--*
--[Comment]
-- property: Boolean Animator.layersAffectMassCenter	get	set	
--Additional layers affects the center of mass.
Animator.layersAffectMassCenter = nil 
--*
--[Comment]
-- property: Single Animator.leftFeetBottomHeight	get	
--Get left foot bottom height.
Animator.leftFeetBottomHeight = nil 
--*
--[Comment]
-- property: Single Animator.rightFeetBottomHeight	get	
--Get right foot bottom height.
Animator.rightFeetBottomHeight = nil 
--*
--[Comment]
-- property: Boolean Animator.logWarnings	get	set	
Animator.logWarnings = nil 
--*
--[Comment]
-- property: Boolean Animator.fireEvents	get	set	
Animator.fireEvents = nil 
--*
--[Comment]
-- property: Boolean Animator.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
Animator.enabled = nil 
--*
--[Comment]
-- property: Boolean Animator.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
Animator.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform Animator.transform	get	
--The Transform attached to this GameObject.
Animator.transform = nil 
--*
--[Comment]
-- property: GameObject Animator.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
Animator.gameObject = nil 
--*
--[Comment]
-- property: String Animator.tag	get	set	
--The tag of this game object.
Animator.tag = nil 
--*
--[Comment]
-- property: String Animator.name	get	set	
--The name of the object.
Animator.name = nil 
--*
--[Comment]
-- property: HideFlags Animator.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Animator.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Single GetFloat(String name)
--See IAnimatorControllerPlayable.GetFloat.
--*
--Single GetFloat(Int32 id)
--See IAnimatorControllerPlayable.GetFloat.
--*
--no static method,use ':'
function Animator:GetFloat() end 

--[Comment]
--overrides:
--*
--Void SetFloat(String name,Single value)
--See IAnimatorControllerPlayable.SetFloat.
--*
--Void SetFloat(String name,Single value,Single dampTime,Single deltaTime)
--See IAnimatorControllerPlayable.SetFloat.
--*
--Void SetFloat(Int32 id,Single value)
--See IAnimatorControllerPlayable.SetFloat.
--*
--Void SetFloat(Int32 id,Single value,Single dampTime,Single deltaTime)
--See IAnimatorControllerPlayable.SetFloat.
--*
--no static method,use ':'
function Animator:SetFloat() end 

--[Comment]
--overrides:
--*
--Boolean GetBool(String name)
--See IAnimatorControllerPlayable.GetBool.
--*
--Boolean GetBool(Int32 id)
--See IAnimatorControllerPlayable.GetBool.
--*
--no static method,use ':'
function Animator:GetBool() end 

--[Comment]
--overrides:
--*
--Void SetBool(String name,Boolean value)
--See IAnimatorControllerPlayable.SetBool.
--*
--Void SetBool(Int32 id,Boolean value)
--See IAnimatorControllerPlayable.SetBool.
--*
--no static method,use ':'
function Animator:SetBool() end 

--[Comment]
--overrides:
--*
--Int32 GetInteger(String name)
--See IAnimatorControllerPlayable.GetInteger.
--*
--Int32 GetInteger(Int32 id)
--See IAnimatorControllerPlayable.GetInteger.
--*
--no static method,use ':'
function Animator:GetInteger() end 

--[Comment]
--overrides:
--*
--Void SetInteger(String name,Int32 value)
--See IAnimatorControllerPlayable.SetInteger.
--*
--Void SetInteger(Int32 id,Int32 value)
--See IAnimatorControllerPlayable.SetInteger.
--*
--no static method,use ':'
function Animator:SetInteger() end 

--[Comment]
--overrides:
--*
--Void SetTrigger(String name)
--See IAnimatorControllerPlayable.SetTrigger.
--*
--Void SetTrigger(Int32 id)
--See IAnimatorControllerPlayable.SetTrigger.
--*
--no static method,use ':'
function Animator:SetTrigger() end 

--[Comment]
--overrides:
--*
--Void ResetTrigger(String name)
--See IAnimatorControllerPlayable.ResetTrigger.
--*
--Void ResetTrigger(Int32 id)
--See IAnimatorControllerPlayable.ResetTrigger.
--*
--no static method,use ':'
function Animator:ResetTrigger() end 

--[Comment]
--overrides:
--*
--Boolean IsParameterControlledByCurve(String name)
--See IAnimatorControllerPlayable.IsParameterControlledByCurve.
--*
--Boolean IsParameterControlledByCurve(Int32 id)
--See IAnimatorControllerPlayable.IsParameterControlledByCurve.
--*
--no static method,use ':'
function Animator:IsParameterControlledByCurve() end 

--[Comment]
--overrides:
--*
--Vector3 GetIKPosition(AvatarIKGoal goal)
--Gets the position of an IK goal.
--params:
--goal:    The AvatarIKGoal that is queried.

--*
--no static method,use ':'
function Animator:GetIKPosition() end 

--[Comment]
--overrides:
--*
--Void SetIKPosition(AvatarIKGoal goal,Vector3 goalPosition)
--Sets the position of an IK goal.
--params:
--goal:    The AvatarIKGoal that is set.
--goalPosition:    The position in world space.

--*
--no static method,use ':'
function Animator:SetIKPosition() end 

--[Comment]
--overrides:
--*
--Quaternion GetIKRotation(AvatarIKGoal goal)
--Gets the rotation of an IK goal.
--params:
--goal:    The AvatarIKGoal that is is queried.

--*
--no static method,use ':'
function Animator:GetIKRotation() end 

--[Comment]
--overrides:
--*
--Void SetIKRotation(AvatarIKGoal goal,Quaternion goalRotation)
--Sets the rotation of an IK goal.
--params:
--goal:    The AvatarIKGoal that is set.
--goalRotation:    The rotation in world space.

--*
--no static method,use ':'
function Animator:SetIKRotation() end 

--[Comment]
--overrides:
--*
--Single GetIKPositionWeight(AvatarIKGoal goal)
--Gets the translative weight of an IK goal (0 = at the original animation before IK, 1 = at the goal).
--params:
--goal:    The AvatarIKGoal that is queried.

--*
--no static method,use ':'
function Animator:GetIKPositionWeight() end 

--[Comment]
--overrides:
--*
--Void SetIKPositionWeight(AvatarIKGoal goal,Single value)
--Sets the translative weight of an IK goal (0 = at the original animation before IK, 1 = at the goal).
--params:
--goal:    The AvatarIKGoal that is set.
--value:    The translative weight.

--*
--no static method,use ':'
function Animator:SetIKPositionWeight() end 

--[Comment]
--overrides:
--*
--Single GetIKRotationWeight(AvatarIKGoal goal)
--Gets the rotational weight of an IK goal (0 = rotation before IK, 1 = rotation at the IK goal).
--params:
--goal:    The AvatarIKGoal that is queried.

--*
--no static method,use ':'
function Animator:GetIKRotationWeight() end 

--[Comment]
--overrides:
--*
--Void SetIKRotationWeight(AvatarIKGoal goal,Single value)
--Sets the rotational weight of an IK goal (0 = rotation before IK, 1 = rotation at the IK goal).
--params:
--goal:    The AvatarIKGoal that is set.
--value:    The rotational weight.

--*
--no static method,use ':'
function Animator:SetIKRotationWeight() end 

--[Comment]
--overrides:
--*
--Vector3 GetIKHintPosition(AvatarIKHint hint)
--Gets the position of an IK hint.
--params:
--hint:    The AvatarIKHint that is queried.

--*
--no static method,use ':'
function Animator:GetIKHintPosition() end 

--[Comment]
--overrides:
--*
--Void SetIKHintPosition(AvatarIKHint hint,Vector3 hintPosition)
--Sets the position of an IK hint.
--params:
--hint:    The AvatarIKHint that is set.
--hintPosition:    The position in world space.

--*
--no static method,use ':'
function Animator:SetIKHintPosition() end 

--[Comment]
--overrides:
--*
--Single GetIKHintPositionWeight(AvatarIKHint hint)
--Gets the translative weight of an IK Hint (0 = at the original animation before IK, 1 = at the hint).
--params:
--hint:    The AvatarIKHint that is queried.

--*
--no static method,use ':'
function Animator:GetIKHintPositionWeight() end 

--[Comment]
--overrides:
--*
--Void SetIKHintPositionWeight(AvatarIKHint hint,Single value)
--Sets the translative weight of an IK hint (0 = at the original animation before IK, 1 = at the hint).
--params:
--hint:    The AvatarIKHint that is set.
--value:    The translative weight.

--*
--no static method,use ':'
function Animator:SetIKHintPositionWeight() end 

--[Comment]
--overrides:
--*
--Void SetLookAtPosition(Vector3 lookAtPosition)
--Sets the look at position.
--params:
--lookAtPosition:    The position to lookAt.

--*
--no static method,use ':'
function Animator:SetLookAtPosition() end 

--[Comment]
--overrides:
--*
--Void SetLookAtWeight(Single weight,Single bodyWeight,Single headWeight,Single eyesWeight)
--Set look at weights.
--params:
--weight:    (0-1) the global weight of the LookAt, multiplier for other parameters.
--bodyWeight:    (0-1) determines how much the body is involved in the LookAt.
--headWeight:    (0-1) determines how much the head is involved in the LookAt.
--eyesWeight:    (0-1) determines how much the eyes are involved in the LookAt.
--clampWeight:    (0-1) 0.0 means the character is completely unrestrained in motion, 1.0 means he's completely clamped (look at becomes impossible), and 0.5 means he'll be able to move on half of the possible range (180 degrees).

--*
--Void SetLookAtWeight(Single weight,Single bodyWeight,Single headWeight)
--Set look at weights.
--params:
--weight:    (0-1) the global weight of the LookAt, multiplier for other parameters.
--bodyWeight:    (0-1) determines how much the body is involved in the LookAt.
--headWeight:    (0-1) determines how much the head is involved in the LookAt.
--eyesWeight:    (0-1) determines how much the eyes are involved in the LookAt.
--clampWeight:    (0-1) 0.0 means the character is completely unrestrained in motion, 1.0 means he's completely clamped (look at becomes impossible), and 0.5 means he'll be able to move on half of the possible range (180 degrees).

--*
--Void SetLookAtWeight(Single weight,Single bodyWeight)
--Set look at weights.
--params:
--weight:    (0-1) the global weight of the LookAt, multiplier for other parameters.
--bodyWeight:    (0-1) determines how much the body is involved in the LookAt.
--headWeight:    (0-1) determines how much the head is involved in the LookAt.
--eyesWeight:    (0-1) determines how much the eyes are involved in the LookAt.
--clampWeight:    (0-1) 0.0 means the character is completely unrestrained in motion, 1.0 means he's completely clamped (look at becomes impossible), and 0.5 means he'll be able to move on half of the possible range (180 degrees).

--*
--Void SetLookAtWeight(Single weight)
--Set look at weights.
--params:
--weight:    (0-1) the global weight of the LookAt, multiplier for other parameters.
--bodyWeight:    (0-1) determines how much the body is involved in the LookAt.
--headWeight:    (0-1) determines how much the head is involved in the LookAt.
--eyesWeight:    (0-1) determines how much the eyes are involved in the LookAt.
--clampWeight:    (0-1) 0.0 means the character is completely unrestrained in motion, 1.0 means he's completely clamped (look at becomes impossible), and 0.5 means he'll be able to move on half of the possible range (180 degrees).

--*
--Void SetLookAtWeight(Single weight,Single bodyWeight,Single headWeight,Single eyesWeight,Single clampWeight)
--Set look at weights.
--params:
--weight:    (0-1) the global weight of the LookAt, multiplier for other parameters.
--bodyWeight:    (0-1) determines how much the body is involved in the LookAt.
--headWeight:    (0-1) determines how much the head is involved in the LookAt.
--eyesWeight:    (0-1) determines how much the eyes are involved in the LookAt.
--clampWeight:    (0-1) 0.0 means the character is completely unrestrained in motion, 1.0 means he's completely clamped (look at becomes impossible), and 0.5 means he'll be able to move on half of the possible range (180 degrees).

--*
--no static method,use ':'
function Animator:SetLookAtWeight() end 

--[Comment]
--overrides:
--*
--Void SetBoneLocalRotation(HumanBodyBones humanBoneId,Quaternion rotation)
--Sets local rotation of a human bone during a IK pass.
--params:
--humanBoneId:    The human bone Id.
--rotation:    The local rotation.

--*
--no static method,use ':'
function Animator:SetBoneLocalRotation() end 

--[Comment]
--overrides:
--*
--String GetLayerName(Int32 layerIndex)
--See IAnimatorControllerPlayable.GetLayerName.
--*
--no static method,use ':'
function Animator:GetLayerName() end 

--[Comment]
--overrides:
--*
--Int32 GetLayerIndex(String layerName)
--See IAnimatorControllerPlayable.GetLayerIndex.
--*
--no static method,use ':'
function Animator:GetLayerIndex() end 

--[Comment]
--overrides:
--*
--Single GetLayerWeight(Int32 layerIndex)
--See IAnimatorControllerPlayable.GetLayerWeight.
--*
--no static method,use ':'
function Animator:GetLayerWeight() end 

--[Comment]
--overrides:
--*
--Void SetLayerWeight(Int32 layerIndex,Single weight)
--See IAnimatorControllerPlayable.SetLayerWeight.
--*
--no static method,use ':'
function Animator:SetLayerWeight() end 

--[Comment]
--overrides:
--*
--AnimatorStateInfo GetCurrentAnimatorStateInfo(Int32 layerIndex)
--See IAnimatorControllerPlayable.GetCurrentAnimatorStateInfo.
--*
--no static method,use ':'
function Animator:GetCurrentAnimatorStateInfo() end 

--[Comment]
--overrides:
--*
--AnimatorStateInfo GetNextAnimatorStateInfo(Int32 layerIndex)
--See IAnimatorControllerPlayable.GetNextAnimatorStateInfo.
--*
--no static method,use ':'
function Animator:GetNextAnimatorStateInfo() end 

--[Comment]
--overrides:
--*
--AnimatorTransitionInfo GetAnimatorTransitionInfo(Int32 layerIndex)
--See IAnimatorControllerPlayable.GetAnimatorTransitionInfo.
--*
--no static method,use ':'
function Animator:GetAnimatorTransitionInfo() end 

--[Comment]
--overrides:
--*
--Int32 GetCurrentAnimatorClipInfoCount(Int32 layerIndex)
--See IAnimatorControllerPlayable.GetCurrentAnimatorClipInfoCount.
--*
--no static method,use ':'
function Animator:GetCurrentAnimatorClipInfoCount() end 

--[Comment]
--overrides:
--*
--AnimatorClipInfo[] GetCurrentAnimatorClipInfo(Int32 layerIndex)
--See IAnimatorControllerPlayable.GetCurrentAnimatorClipInfo.
--*
--Void GetCurrentAnimatorClipInfo(Int32 layerIndex,List`1 clips)
--*
--no static method,use ':'
function Animator:GetCurrentAnimatorClipInfo() end 

--[Comment]
--overrides:
--*
--Int32 GetNextAnimatorClipInfoCount(Int32 layerIndex)
--See IAnimatorControllerPlayable.GetNextAnimatorClipInfoCount.
--*
--no static method,use ':'
function Animator:GetNextAnimatorClipInfoCount() end 

--[Comment]
--overrides:
--*
--AnimatorClipInfo[] GetNextAnimatorClipInfo(Int32 layerIndex)
--See IAnimatorControllerPlayable.GetNextAnimatorClipInfo.
--*
--Void GetNextAnimatorClipInfo(Int32 layerIndex,List`1 clips)
--*
--no static method,use ':'
function Animator:GetNextAnimatorClipInfo() end 

--[Comment]
--overrides:
--*
--Boolean IsInTransition(Int32 layerIndex)
--See IAnimatorControllerPlayable.IsInTransition.
--*
--no static method,use ':'
function Animator:IsInTransition() end 

--[Comment]
--overrides:
--*
--AnimatorControllerParameter GetParameter(Int32 index)
--See AnimatorController.GetParameter.
--*
--no static method,use ':'
function Animator:GetParameter() end 

--[Comment]
--overrides:
--*
--Void MatchTarget(Vector3 matchPosition,Quaternion matchRotation,AvatarTarget targetBodyPart,MatchTargetWeightMask weightMask,Single startNormalizedTime,Single targetNormalizedTime)
--Automatically adjust the gameobject position and rotation so that the AvatarTarget reaches the matchPosition when the current state is at the specified progress.
--params:
--matchPosition:    The position we want the body part to reach.
--matchRotation:    The rotation in which we want the body part to be.
--targetBodyPart:    The body part that is involved in the match.
--weightMask:    Structure that contains weights for matching position and rotation.
--startNormalizedTime:    Start time within the animation clip (0 - beginning of clip, 1 - end of clip).
--targetNormalizedTime:    End time within the animation clip (0 - beginning of clip, 1 - end of clip), values greater than 1 can be set to trigger a match after a certain number of loops. Ex: 2.3 means at 30% of 2nd loop.

--*
--Void MatchTarget(Vector3 matchPosition,Quaternion matchRotation,AvatarTarget targetBodyPart,MatchTargetWeightMask weightMask,Single startNormalizedTime)
--*
--no static method,use ':'
function Animator:MatchTarget() end 

--[Comment]
--overrides:
--*
--Void InterruptMatchTarget(Boolean completeMatch)
--Interrupts the automatic target matching.
--*
--Void InterruptMatchTarget()
--*
--no static method,use ':'
function Animator:InterruptMatchTarget() end 

--[Comment]
--overrides:
--*
--Void CrossFadeInFixedTime(String stateName,Single transitionDuration,Int32 layer)
--*
--Void CrossFadeInFixedTime(String stateName,Single transitionDuration)
--*
--Void CrossFadeInFixedTime(String stateName,Single transitionDuration,Int32 layer,Single fixedTime)
--See IAnimatorControllerPlayable.CrossFadeInFixedTime.
--*
--Void CrossFadeInFixedTime(Int32 stateNameHash,Single transitionDuration,Int32 layer,Single fixedTime)
--See IAnimatorControllerPlayable.CrossFadeInFixedTime.
--*
--Void CrossFadeInFixedTime(Int32 stateNameHash,Single transitionDuration,Int32 layer)
--*
--Void CrossFadeInFixedTime(Int32 stateNameHash,Single transitionDuration)
--*
--no static method,use ':'
function Animator:CrossFadeInFixedTime() end 

--[Comment]
--overrides:
--*
--Void CrossFade(String stateName,Single transitionDuration,Int32 layer)
--*
--Void CrossFade(String stateName,Single transitionDuration)
--*
--Void CrossFade(String stateName,Single transitionDuration,Int32 layer,Single normalizedTime)
--See IAnimatorControllerPlayable.CrossFade.
--*
--Void CrossFade(Int32 stateNameHash,Single transitionDuration,Int32 layer,Single normalizedTime)
--See IAnimatorControllerPlayable.CrossFade.
--*
--Void CrossFade(Int32 stateNameHash,Single transitionDuration,Int32 layer)
--*
--Void CrossFade(Int32 stateNameHash,Single transitionDuration)
--*
--no static method,use ':'
function Animator:CrossFade() end 

--[Comment]
--overrides:
--*
--Void PlayInFixedTime(String stateName,Int32 layer)
--*
--Void PlayInFixedTime(String stateName)
--*
--Void PlayInFixedTime(String stateName,Int32 layer,Single fixedTime)
--See IAnimatorControllerPlayable.PlayInFixedTime.
--*
--Void PlayInFixedTime(Int32 stateNameHash,Int32 layer,Single fixedTime)
--See IAnimatorControllerPlayable.PlayInFixedTime.
--*
--Void PlayInFixedTime(Int32 stateNameHash,Int32 layer)
--*
--Void PlayInFixedTime(Int32 stateNameHash)
--*
--no static method,use ':'
function Animator:PlayInFixedTime() end 

--[Comment]
--overrides:
--*
--Void Play(String stateName,Int32 layer)
--*
--Void Play(String stateName)
--*
--Void Play(String stateName,Int32 layer,Single normalizedTime)
--See IAnimatorControllerPlayable.Play.
--*
--Void Play(Int32 stateNameHash,Int32 layer,Single normalizedTime)
--See IAnimatorControllerPlayable.Play.
--*
--Void Play(Int32 stateNameHash,Int32 layer)
--*
--Void Play(Int32 stateNameHash)
--*
--no static method,use ':'
function Animator:Play() end 

--[Comment]
--overrides:
--*
--Void SetTarget(AvatarTarget targetIndex,Single targetNormalizedTime)
--Sets an AvatarTarget and a targetNormalizedTime for the current state.
--params:
--targetIndex:    The avatar body part that is queried.
--targetNormalizedTime:    The current state Time that is queried.

--*
--no static method,use ':'
function Animator:SetTarget() end 

--[Comment]
--overrides:
--*
--Transform GetBoneTransform(HumanBodyBones humanBoneId)
--Returns transform mapped to this human bone id.
--params:
--humanBoneId:    The human bone that is queried, see enum HumanBodyBones for a list of possible values.

--*
--no static method,use ':'
function Animator:GetBoneTransform() end 

--[Comment]
--overrides:
--*
--Void StartPlayback()
--Sets the animator in playback mode.
--*
--no static method,use ':'
function Animator:StartPlayback() end 

--[Comment]
--overrides:
--*
--Void StopPlayback()
--Stops the animator playback mode. When playback stops, the avatar resumes getting control from game logic.
--*
--no static method,use ':'
function Animator:StopPlayback() end 

--[Comment]
--overrides:
--*
--Void StartRecording(Int32 frameCount)
--Sets the animator in recording mode, and allocates a circular buffer of size frameCount.
--params:
--frameCount:    The number of frames (updates) that will be recorded. If frameCount is 0, the recording will continue until the user calls StopRecording. The maximum value for frameCount is 10000.

--*
--no static method,use ':'
function Animator:StartRecording() end 

--[Comment]
--overrides:
--*
--Void StopRecording()
--Stops animator record mode.
--*
--no static method,use ':'
function Animator:StopRecording() end 

--[Comment]
--overrides:
--*
--Boolean HasState(Int32 layerIndex,Int32 stateID)
--See IAnimatorControllerPlayable.HasState.
--*
--no static method,use ':'
function Animator:HasState() end 

--[Comment]
--overrides:
--*
--Int32 StringToHash(String name)
--Generates an parameter id from a string.
--params:
--name:    The string to convert to Id.

--*
--static method,use '.'
function Animator.StringToHash() end 

--[Comment]
--overrides:
--*
--Void Update(Single deltaTime)
--Evaluates the animator based on deltaTime.
--params:
--deltaTime:    The time delta.

--*
--no static method,use ':'
function Animator:Update() end 

--[Comment]
--overrides:
--*
--Void Rebind()
--Rebind all the animated properties and mesh data with the Animator.
--*
--no static method,use ':'
function Animator:Rebind() end 

--[Comment]
--overrides:
--*
--Void ApplyBuiltinRootMotion()
--Apply the default Root Motion.
--*
--no static method,use ':'
function Animator:ApplyBuiltinRootMotion() end 

Input = {} 
--*
--[Comment]
--consturctor for Input overrides:
--*
--Input.New()
--*

function Input.New() end
--*
--[Comment]
-- property: Boolean Input.compensateSensors	get	set	
--This property controls if input sensors should be compensated for screen orientation.
Input.compensateSensors = nil 
--*
--[Comment]
-- property: Gyroscope Input.gyro	get	
--Returns default gyroscope.
Input.gyro = nil 
--*
--[Comment]
-- property: Vector3 Input.mousePosition	get	
--The current mouse position in pixel coordinates. (Read Only)
Input.mousePosition = nil 
--*
--[Comment]
-- property: Vector2 Input.mouseScrollDelta	get	
--The current mouse scroll delta. (Read Only)
Input.mouseScrollDelta = nil 
--*
--[Comment]
-- property: Boolean Input.mousePresent	get	
--Indicates if a mouse device is detected.
Input.mousePresent = nil 
--*
--[Comment]
-- property: Boolean Input.simulateMouseWithTouches	get	set	
--Enables/Disables mouse simulation with touches. By default this option is enabled.
Input.simulateMouseWithTouches = nil 
--*
--[Comment]
-- property: Boolean Input.anyKey	get	
--Is any key or mouse button currently held down? (Read Only)
Input.anyKey = nil 
--*
--[Comment]
-- property: Boolean Input.anyKeyDown	get	
--Returns true the first frame the user hits any key or mouse button. (Read Only)
Input.anyKeyDown = nil 
--*
--[Comment]
-- property: String Input.inputString	get	
--Returns the keyboard input entered this frame. (Read Only)
Input.inputString = nil 
--*
--[Comment]
-- property: Vector3 Input.acceleration	get	
--Last measured linear acceleration of a device in three-dimensional space. (Read Only)
Input.acceleration = nil 
--*
--[Comment]
-- property: AccelerationEvent[] Input.accelerationEvents	get	
--Returns list of acceleration measurements which occurred during the last frame. (Read Only) (Allocates temporary variables).
Input.accelerationEvents = nil 
--*
--[Comment]
-- property: Int32 Input.accelerationEventCount	get	
--Number of acceleration measurements which occurred during last frame.
Input.accelerationEventCount = nil 
--*
--[Comment]
-- property: Touch[] Input.touches	get	
--Returns list of objects representing status of all touches during last frame. (Read Only) (Allocates temporary variables).
Input.touches = nil 
--*
--[Comment]
-- property: Int32 Input.touchCount	get	
--Number of touches. Guaranteed not to change throughout the frame. (Read Only)
Input.touchCount = nil 
--*
--[Comment]
-- property: Boolean Input.touchPressureSupported	get	
--Bool value which let's users check if touch pressure is supported.
Input.touchPressureSupported = nil 
--*
--[Comment]
-- property: Boolean Input.stylusTouchSupported	get	
--Returns true when Stylus Touch is supported by a device or platform.
Input.stylusTouchSupported = nil 
--*
--[Comment]
-- property: Boolean Input.touchSupported	get	
--Returns whether the device on which application is currently running supports touch input.
Input.touchSupported = nil 
--*
--[Comment]
-- property: Boolean Input.multiTouchEnabled	get	set	
--Property indicating whether the system handles multiple touches.
Input.multiTouchEnabled = nil 
--*
--[Comment]
-- property: LocationService Input.location	get	
--Property for accessing device location (handheld devices only). (Read Only)
Input.location = nil 
--*
--[Comment]
-- property: Compass Input.compass	get	
--Property for accessing compass (handheld devices only). (Read Only)
Input.compass = nil 
--*
--[Comment]
-- property: DeviceOrientation Input.deviceOrientation	get	
--Device physical orientation as reported by OS. (Read Only)
Input.deviceOrientation = nil 
--*
--[Comment]
-- property: IMECompositionMode Input.imeCompositionMode	get	set	
--Controls enabling and disabling of IME input composition.
Input.imeCompositionMode = nil 
--*
--[Comment]
-- property: String Input.compositionString	get	
--The current IME composition string being typed by the user.
Input.compositionString = nil 
--*
--[Comment]
-- property: Boolean Input.imeIsSelected	get	
--Does the user have an IME keyboard input source selected?
Input.imeIsSelected = nil 
--*
--[Comment]
-- property: Vector2 Input.compositionCursorPos	get	set	
--The current text input position used by IMEs to open windows.
Input.compositionCursorPos = nil 
--*
--[Comment]
-- property: Boolean Input.backButtonLeavesApp	get	set	
--Should  Back button quit the application?  Only usable on Android, Windows Phone or Windows Tablets.
Input.backButtonLeavesApp = nil 
--*
--[Comment]
--overrides:
--*
--Single GetAxis(String axisName)
--Returns the value of the virtual axis identified by axisName.
--*
--static method,use '.'
function Input.GetAxis() end 

--[Comment]
--overrides:
--*
--Single GetAxisRaw(String axisName)
--Returns the value of the virtual axis identified by axisName with no smoothing filtering applied.
--*
--static method,use '.'
function Input.GetAxisRaw() end 

--[Comment]
--overrides:
--*
--Boolean GetButton(String buttonName)
--Returns true while the virtual button identified by buttonName is held down.
--*
--static method,use '.'
function Input.GetButton() end 

--[Comment]
--overrides:
--*
--Boolean GetButtonDown(String buttonName)
--Returns true during the frame the user pressed down the virtual button identified by buttonName.
--*
--static method,use '.'
function Input.GetButtonDown() end 

--[Comment]
--overrides:
--*
--Boolean GetButtonUp(String buttonName)
--Returns true the first frame the user releases the virtual button identified by buttonName.
--*
--static method,use '.'
function Input.GetButtonUp() end 

--[Comment]
--overrides:
--*
--Boolean GetKey(String name)
--Returns true while the user holds down the key identified by name. Think auto fire.
--*
--Boolean GetKey(KeyCode key)
--Returns true while the user holds down the key identified by the key KeyCode enum parameter.
--*
--static method,use '.'
function Input.GetKey() end 

--[Comment]
--overrides:
--*
--Boolean GetKeyDown(String name)
--Returns true during the frame the user starts pressing down the key identified by name.
--*
--Boolean GetKeyDown(KeyCode key)
--Returns true during the frame the user starts pressing down the key identified by the key KeyCode enum parameter.
--*
--static method,use '.'
function Input.GetKeyDown() end 

--[Comment]
--overrides:
--*
--Boolean GetKeyUp(String name)
--Returns true during the frame the user releases the key identified by name.
--*
--Boolean GetKeyUp(KeyCode key)
--Returns true during the frame the user releases the key identified by the key KeyCode enum parameter.
--*
--static method,use '.'
function Input.GetKeyUp() end 

--[Comment]
--overrides:
--*
--String[] GetJoystickNames()
--Returns an array of strings describing the connected joysticks.
--*
--static method,use '.'
function Input.GetJoystickNames() end 

--[Comment]
--overrides:
--*
--Boolean IsJoystickPreconfigured(String joystickName)
--Determine whether a particular joystick model has been preconfigured by Unity. (Linux-only).
--params:
--joystickName:    The name of the joystick to check (returned by Input.GetJoystickNames).

--*
--static method,use '.'
function Input.IsJoystickPreconfigured() end 

--[Comment]
--overrides:
--*
--Boolean GetMouseButton(Int32 button)
--Returns whether the given mouse button is held down.
--*
--static method,use '.'
function Input.GetMouseButton() end 

--[Comment]
--overrides:
--*
--Boolean GetMouseButtonDown(Int32 button)
--Returns true during the frame the user pressed the given mouse button.
--*
--static method,use '.'
function Input.GetMouseButtonDown() end 

--[Comment]
--overrides:
--*
--Boolean GetMouseButtonUp(Int32 button)
--Returns true during the frame the user releases the given mouse button.
--*
--static method,use '.'
function Input.GetMouseButtonUp() end 

--[Comment]
--overrides:
--*
--Void ResetInputAxes()
--Resets all input. After ResetInputAxes all axes return to 0 and all buttons return to 0 for one frame.
--*
--static method,use '.'
function Input.ResetInputAxes() end 

--[Comment]
--overrides:
--*
--AccelerationEvent GetAccelerationEvent(Int32 index)
--Returns specific acceleration measurement which occurred during last frame. (Does not allocate temporary variables).
--*
--static method,use '.'
function Input.GetAccelerationEvent() end 

--[Comment]
--overrides:
--*
--Touch GetTouch(Int32 index)
--Returns object representing status of a specific touch. (Does not allocate temporary variables).
--*
--static method,use '.'
function Input.GetTouch() end 

KeyCode = {} 

KeyCode.None = nil;

KeyCode.Backspace = nil;

KeyCode.Delete = nil;

KeyCode.Tab = nil;

KeyCode.Clear = nil;

KeyCode.Return = nil;

KeyCode.Pause = nil;

KeyCode.Escape = nil;

KeyCode.Space = nil;

KeyCode.Keypad0 = nil;

KeyCode.Keypad1 = nil;

KeyCode.Keypad2 = nil;

KeyCode.Keypad3 = nil;

KeyCode.Keypad4 = nil;

KeyCode.Keypad5 = nil;

KeyCode.Keypad6 = nil;

KeyCode.Keypad7 = nil;

KeyCode.Keypad8 = nil;

KeyCode.Keypad9 = nil;

KeyCode.KeypadPeriod = nil;

KeyCode.KeypadDivide = nil;

KeyCode.KeypadMultiply = nil;

KeyCode.KeypadMinus = nil;

KeyCode.KeypadPlus = nil;

KeyCode.KeypadEnter = nil;

KeyCode.KeypadEquals = nil;

KeyCode.UpArrow = nil;

KeyCode.DownArrow = nil;

KeyCode.RightArrow = nil;

KeyCode.LeftArrow = nil;

KeyCode.Insert = nil;

KeyCode.Home = nil;

KeyCode.End = nil;

KeyCode.PageUp = nil;

KeyCode.PageDown = nil;

KeyCode.F1 = nil;

KeyCode.F2 = nil;

KeyCode.F3 = nil;

KeyCode.F4 = nil;

KeyCode.F5 = nil;

KeyCode.F6 = nil;

KeyCode.F7 = nil;

KeyCode.F8 = nil;

KeyCode.F9 = nil;

KeyCode.F10 = nil;

KeyCode.F11 = nil;

KeyCode.F12 = nil;

KeyCode.F13 = nil;

KeyCode.F14 = nil;

KeyCode.F15 = nil;

KeyCode.Alpha0 = nil;

KeyCode.Alpha1 = nil;

KeyCode.Alpha2 = nil;

KeyCode.Alpha3 = nil;

KeyCode.Alpha4 = nil;

KeyCode.Alpha5 = nil;

KeyCode.Alpha6 = nil;

KeyCode.Alpha7 = nil;

KeyCode.Alpha8 = nil;

KeyCode.Alpha9 = nil;

KeyCode.Exclaim = nil;

KeyCode.DoubleQuote = nil;

KeyCode.Hash = nil;

KeyCode.Dollar = nil;

KeyCode.Ampersand = nil;

KeyCode.Quote = nil;

KeyCode.LeftParen = nil;

KeyCode.RightParen = nil;

KeyCode.Asterisk = nil;

KeyCode.Plus = nil;

KeyCode.Comma = nil;

KeyCode.Minus = nil;

KeyCode.Period = nil;

KeyCode.Slash = nil;

KeyCode.Colon = nil;

KeyCode.Semicolon = nil;

KeyCode.Less = nil;

KeyCode.Equals = nil;

KeyCode.Greater = nil;

KeyCode.Question = nil;

KeyCode.At = nil;

KeyCode.LeftBracket = nil;

KeyCode.Backslash = nil;

KeyCode.RightBracket = nil;

KeyCode.Caret = nil;

KeyCode.Underscore = nil;

KeyCode.BackQuote = nil;

KeyCode.A = nil;

KeyCode.B = nil;

KeyCode.C = nil;

KeyCode.D = nil;

KeyCode.E = nil;

KeyCode.F = nil;

KeyCode.G = nil;

KeyCode.H = nil;

KeyCode.I = nil;

KeyCode.J = nil;

KeyCode.K = nil;

KeyCode.L = nil;

KeyCode.M = nil;

KeyCode.N = nil;

KeyCode.O = nil;

KeyCode.P = nil;

KeyCode.Q = nil;

KeyCode.R = nil;

KeyCode.S = nil;

KeyCode.T = nil;

KeyCode.U = nil;

KeyCode.V = nil;

KeyCode.W = nil;

KeyCode.X = nil;

KeyCode.Y = nil;

KeyCode.Z = nil;

KeyCode.Numlock = nil;

KeyCode.CapsLock = nil;

KeyCode.ScrollLock = nil;

KeyCode.RightShift = nil;

KeyCode.LeftShift = nil;

KeyCode.RightControl = nil;

KeyCode.LeftControl = nil;

KeyCode.RightAlt = nil;

KeyCode.LeftAlt = nil;

KeyCode.LeftCommand = nil;

KeyCode.LeftApple = nil;

KeyCode.LeftWindows = nil;

KeyCode.RightCommand = nil;

KeyCode.RightApple = nil;

KeyCode.RightWindows = nil;

KeyCode.AltGr = nil;

KeyCode.Help = nil;

KeyCode.Print = nil;

KeyCode.SysReq = nil;

KeyCode.Break = nil;

KeyCode.Menu = nil;

KeyCode.Mouse0 = nil;

KeyCode.Mouse1 = nil;

KeyCode.Mouse2 = nil;

KeyCode.Mouse3 = nil;

KeyCode.Mouse4 = nil;

KeyCode.Mouse5 = nil;

KeyCode.Mouse6 = nil;

KeyCode.JoystickButton0 = nil;

KeyCode.JoystickButton1 = nil;

KeyCode.JoystickButton2 = nil;

KeyCode.JoystickButton3 = nil;

KeyCode.JoystickButton4 = nil;

KeyCode.JoystickButton5 = nil;

KeyCode.JoystickButton6 = nil;

KeyCode.JoystickButton7 = nil;

KeyCode.JoystickButton8 = nil;

KeyCode.JoystickButton9 = nil;

KeyCode.JoystickButton10 = nil;

KeyCode.JoystickButton11 = nil;

KeyCode.JoystickButton12 = nil;

KeyCode.JoystickButton13 = nil;

KeyCode.JoystickButton14 = nil;

KeyCode.JoystickButton15 = nil;

KeyCode.JoystickButton16 = nil;

KeyCode.JoystickButton17 = nil;

KeyCode.JoystickButton18 = nil;

KeyCode.JoystickButton19 = nil;

KeyCode.Joystick1Button0 = nil;

KeyCode.Joystick1Button1 = nil;

KeyCode.Joystick1Button2 = nil;

KeyCode.Joystick1Button3 = nil;

KeyCode.Joystick1Button4 = nil;

KeyCode.Joystick1Button5 = nil;

KeyCode.Joystick1Button6 = nil;

KeyCode.Joystick1Button7 = nil;

KeyCode.Joystick1Button8 = nil;

KeyCode.Joystick1Button9 = nil;

KeyCode.Joystick1Button10 = nil;

KeyCode.Joystick1Button11 = nil;

KeyCode.Joystick1Button12 = nil;

KeyCode.Joystick1Button13 = nil;

KeyCode.Joystick1Button14 = nil;

KeyCode.Joystick1Button15 = nil;

KeyCode.Joystick1Button16 = nil;

KeyCode.Joystick1Button17 = nil;

KeyCode.Joystick1Button18 = nil;

KeyCode.Joystick1Button19 = nil;

KeyCode.Joystick2Button0 = nil;

KeyCode.Joystick2Button1 = nil;

KeyCode.Joystick2Button2 = nil;

KeyCode.Joystick2Button3 = nil;

KeyCode.Joystick2Button4 = nil;

KeyCode.Joystick2Button5 = nil;

KeyCode.Joystick2Button6 = nil;

KeyCode.Joystick2Button7 = nil;

KeyCode.Joystick2Button8 = nil;

KeyCode.Joystick2Button9 = nil;

KeyCode.Joystick2Button10 = nil;

KeyCode.Joystick2Button11 = nil;

KeyCode.Joystick2Button12 = nil;

KeyCode.Joystick2Button13 = nil;

KeyCode.Joystick2Button14 = nil;

KeyCode.Joystick2Button15 = nil;

KeyCode.Joystick2Button16 = nil;

KeyCode.Joystick2Button17 = nil;

KeyCode.Joystick2Button18 = nil;

KeyCode.Joystick2Button19 = nil;

KeyCode.Joystick3Button0 = nil;

KeyCode.Joystick3Button1 = nil;

KeyCode.Joystick3Button2 = nil;

KeyCode.Joystick3Button3 = nil;

KeyCode.Joystick3Button4 = nil;

KeyCode.Joystick3Button5 = nil;

KeyCode.Joystick3Button6 = nil;

KeyCode.Joystick3Button7 = nil;

KeyCode.Joystick3Button8 = nil;

KeyCode.Joystick3Button9 = nil;

KeyCode.Joystick3Button10 = nil;

KeyCode.Joystick3Button11 = nil;

KeyCode.Joystick3Button12 = nil;

KeyCode.Joystick3Button13 = nil;

KeyCode.Joystick3Button14 = nil;

KeyCode.Joystick3Button15 = nil;

KeyCode.Joystick3Button16 = nil;

KeyCode.Joystick3Button17 = nil;

KeyCode.Joystick3Button18 = nil;

KeyCode.Joystick3Button19 = nil;

KeyCode.Joystick4Button0 = nil;

KeyCode.Joystick4Button1 = nil;

KeyCode.Joystick4Button2 = nil;

KeyCode.Joystick4Button3 = nil;

KeyCode.Joystick4Button4 = nil;

KeyCode.Joystick4Button5 = nil;

KeyCode.Joystick4Button6 = nil;

KeyCode.Joystick4Button7 = nil;

KeyCode.Joystick4Button8 = nil;

KeyCode.Joystick4Button9 = nil;

KeyCode.Joystick4Button10 = nil;

KeyCode.Joystick4Button11 = nil;

KeyCode.Joystick4Button12 = nil;

KeyCode.Joystick4Button13 = nil;

KeyCode.Joystick4Button14 = nil;

KeyCode.Joystick4Button15 = nil;

KeyCode.Joystick4Button16 = nil;

KeyCode.Joystick4Button17 = nil;

KeyCode.Joystick4Button18 = nil;

KeyCode.Joystick4Button19 = nil;

KeyCode.Joystick5Button0 = nil;

KeyCode.Joystick5Button1 = nil;

KeyCode.Joystick5Button2 = nil;

KeyCode.Joystick5Button3 = nil;

KeyCode.Joystick5Button4 = nil;

KeyCode.Joystick5Button5 = nil;

KeyCode.Joystick5Button6 = nil;

KeyCode.Joystick5Button7 = nil;

KeyCode.Joystick5Button8 = nil;

KeyCode.Joystick5Button9 = nil;

KeyCode.Joystick5Button10 = nil;

KeyCode.Joystick5Button11 = nil;

KeyCode.Joystick5Button12 = nil;

KeyCode.Joystick5Button13 = nil;

KeyCode.Joystick5Button14 = nil;

KeyCode.Joystick5Button15 = nil;

KeyCode.Joystick5Button16 = nil;

KeyCode.Joystick5Button17 = nil;

KeyCode.Joystick5Button18 = nil;

KeyCode.Joystick5Button19 = nil;

KeyCode.Joystick6Button0 = nil;

KeyCode.Joystick6Button1 = nil;

KeyCode.Joystick6Button2 = nil;

KeyCode.Joystick6Button3 = nil;

KeyCode.Joystick6Button4 = nil;

KeyCode.Joystick6Button5 = nil;

KeyCode.Joystick6Button6 = nil;

KeyCode.Joystick6Button7 = nil;

KeyCode.Joystick6Button8 = nil;

KeyCode.Joystick6Button9 = nil;

KeyCode.Joystick6Button10 = nil;

KeyCode.Joystick6Button11 = nil;

KeyCode.Joystick6Button12 = nil;

KeyCode.Joystick6Button13 = nil;

KeyCode.Joystick6Button14 = nil;

KeyCode.Joystick6Button15 = nil;

KeyCode.Joystick6Button16 = nil;

KeyCode.Joystick6Button17 = nil;

KeyCode.Joystick6Button18 = nil;

KeyCode.Joystick6Button19 = nil;

KeyCode.Joystick7Button0 = nil;

KeyCode.Joystick7Button1 = nil;

KeyCode.Joystick7Button2 = nil;

KeyCode.Joystick7Button3 = nil;

KeyCode.Joystick7Button4 = nil;

KeyCode.Joystick7Button5 = nil;

KeyCode.Joystick7Button6 = nil;

KeyCode.Joystick7Button7 = nil;

KeyCode.Joystick7Button8 = nil;

KeyCode.Joystick7Button9 = nil;

KeyCode.Joystick7Button10 = nil;

KeyCode.Joystick7Button11 = nil;

KeyCode.Joystick7Button12 = nil;

KeyCode.Joystick7Button13 = nil;

KeyCode.Joystick7Button14 = nil;

KeyCode.Joystick7Button15 = nil;

KeyCode.Joystick7Button16 = nil;

KeyCode.Joystick7Button17 = nil;

KeyCode.Joystick7Button18 = nil;

KeyCode.Joystick7Button19 = nil;

KeyCode.Joystick8Button0 = nil;

KeyCode.Joystick8Button1 = nil;

KeyCode.Joystick8Button2 = nil;

KeyCode.Joystick8Button3 = nil;

KeyCode.Joystick8Button4 = nil;

KeyCode.Joystick8Button5 = nil;

KeyCode.Joystick8Button6 = nil;

KeyCode.Joystick8Button7 = nil;

KeyCode.Joystick8Button8 = nil;

KeyCode.Joystick8Button9 = nil;

KeyCode.Joystick8Button10 = nil;

KeyCode.Joystick8Button11 = nil;

KeyCode.Joystick8Button12 = nil;

KeyCode.Joystick8Button13 = nil;

KeyCode.Joystick8Button14 = nil;

KeyCode.Joystick8Button15 = nil;

KeyCode.Joystick8Button16 = nil;

KeyCode.Joystick8Button17 = nil;

KeyCode.Joystick8Button18 = nil;

KeyCode.Joystick8Button19 = nil;

SkinnedMeshRenderer = {} 
--*
--[Comment]
--consturctor for SkinnedMeshRenderer overrides:
--*
--SkinnedMeshRenderer.New()
--*

function SkinnedMeshRenderer.New() end
--*
--[Comment]
-- property: Transform[] SkinnedMeshRenderer.bones	get	set	
--The bones used to skin the mesh.
SkinnedMeshRenderer.bones = nil 
--*
--[Comment]
-- property: Transform SkinnedMeshRenderer.rootBone	get	set	
SkinnedMeshRenderer.rootBone = nil 
--*
--[Comment]
-- property: SkinQuality SkinnedMeshRenderer.quality	get	set	
--The maximum number of bones affecting a single vertex.
SkinnedMeshRenderer.quality = nil 
--*
--[Comment]
-- property: Mesh SkinnedMeshRenderer.sharedMesh	get	set	
--The mesh used for skinning.
SkinnedMeshRenderer.sharedMesh = nil 
--*
--[Comment]
-- property: Boolean SkinnedMeshRenderer.updateWhenOffscreen	get	set	
--If enabled, the Skinned Mesh will be updated when offscreen. If disabled, this also disables updating animations.
SkinnedMeshRenderer.updateWhenOffscreen = nil 
--*
--[Comment]
-- property: Boolean SkinnedMeshRenderer.skinnedMotionVectors	get	set	
--Specifies whether skinned motion vectors should be used for this renderer.
SkinnedMeshRenderer.skinnedMotionVectors = nil 
--*
--[Comment]
-- property: Bounds SkinnedMeshRenderer.localBounds	get	set	
--AABB of this Skinned Mesh in its local space.
SkinnedMeshRenderer.localBounds = nil 
--*
--[Comment]
-- property: Boolean SkinnedMeshRenderer.isPartOfStaticBatch	get	
--Has this renderer been statically batched with any other renderers?
SkinnedMeshRenderer.isPartOfStaticBatch = nil 
--*
--[Comment]
-- property: Matrix4x4 SkinnedMeshRenderer.worldToLocalMatrix	get	
--Matrix that transforms a point from world space into local space (Read Only).
SkinnedMeshRenderer.worldToLocalMatrix = nil 
--*
--[Comment]
-- property: Matrix4x4 SkinnedMeshRenderer.localToWorldMatrix	get	
--Matrix that transforms a point from local space into world space (Read Only).
SkinnedMeshRenderer.localToWorldMatrix = nil 
--*
--[Comment]
-- property: Boolean SkinnedMeshRenderer.enabled	get	set	
--Makes the rendered 3D object visible if enabled.
SkinnedMeshRenderer.enabled = nil 
--*
--[Comment]
-- property: ShadowCastingMode SkinnedMeshRenderer.shadowCastingMode	get	set	
--Does this object cast shadows?
SkinnedMeshRenderer.shadowCastingMode = nil 
--*
--[Comment]
-- property: Boolean SkinnedMeshRenderer.receiveShadows	get	set	
--Does this object receive shadows?
SkinnedMeshRenderer.receiveShadows = nil 
--*
--[Comment]
-- property: Material SkinnedMeshRenderer.material	get	set	
--Returns the first instantiated Material assigned to the renderer.
SkinnedMeshRenderer.material = nil 
--*
--[Comment]
-- property: Material SkinnedMeshRenderer.sharedMaterial	get	set	
--The shared material of this object.
SkinnedMeshRenderer.sharedMaterial = nil 
--*
--[Comment]
-- property: Material[] SkinnedMeshRenderer.materials	get	set	
--Returns all the instantiated materials of this object.
SkinnedMeshRenderer.materials = nil 
--*
--[Comment]
-- property: Material[] SkinnedMeshRenderer.sharedMaterials	get	set	
--All the shared materials of this object.
SkinnedMeshRenderer.sharedMaterials = nil 
--*
--[Comment]
-- property: Bounds SkinnedMeshRenderer.bounds	get	
--The bounding volume of the renderer (Read Only).
SkinnedMeshRenderer.bounds = nil 
--*
--[Comment]
-- property: Int32 SkinnedMeshRenderer.lightmapIndex	get	set	
--The index of the baked lightmap applied to this renderer.
SkinnedMeshRenderer.lightmapIndex = nil 
--*
--[Comment]
-- property: Int32 SkinnedMeshRenderer.realtimeLightmapIndex	get	set	
--The index of the realtime lightmap applied to this renderer.
SkinnedMeshRenderer.realtimeLightmapIndex = nil 
--*
--[Comment]
-- property: Vector4 SkinnedMeshRenderer.lightmapScaleOffset	get	set	
--The UV scale & offset used for a lightmap.
SkinnedMeshRenderer.lightmapScaleOffset = nil 
--*
--[Comment]
-- property: MotionVectorGenerationMode SkinnedMeshRenderer.motionVectorGenerationMode	get	set	
--Specifies the mode for motion vector rendering.
SkinnedMeshRenderer.motionVectorGenerationMode = nil 
--*
--[Comment]
-- property: Vector4 SkinnedMeshRenderer.realtimeLightmapScaleOffset	get	set	
--The UV scale & offset used for a realtime lightmap.
SkinnedMeshRenderer.realtimeLightmapScaleOffset = nil 
--*
--[Comment]
-- property: Boolean SkinnedMeshRenderer.isVisible	get	
--Is this renderer visible in any camera? (Read Only)
SkinnedMeshRenderer.isVisible = nil 
--*
--[Comment]
-- property: LightProbeUsage SkinnedMeshRenderer.lightProbeUsage	get	set	
--The light probe interpolation type.
SkinnedMeshRenderer.lightProbeUsage = nil 
--*
--[Comment]
-- property: GameObject SkinnedMeshRenderer.lightProbeProxyVolumeOverride	get	set	
--If set, the Renderer will use the Light Probe Proxy Volume component attached to the source GameObject.
SkinnedMeshRenderer.lightProbeProxyVolumeOverride = nil 
--*
--[Comment]
-- property: Transform SkinnedMeshRenderer.probeAnchor	get	set	
--If set, Renderer will use this Transform's position to find the light or reflection probe.
SkinnedMeshRenderer.probeAnchor = nil 
--*
--[Comment]
-- property: ReflectionProbeUsage SkinnedMeshRenderer.reflectionProbeUsage	get	set	
--Should reflection probes be used for this Renderer?
SkinnedMeshRenderer.reflectionProbeUsage = nil 
--*
--[Comment]
-- property: String SkinnedMeshRenderer.sortingLayerName	get	set	
--Name of the Renderer's sorting layer.
SkinnedMeshRenderer.sortingLayerName = nil 
--*
--[Comment]
-- property: Int32 SkinnedMeshRenderer.sortingLayerID	get	set	
--Unique ID of the Renderer's sorting layer.
SkinnedMeshRenderer.sortingLayerID = nil 
--*
--[Comment]
-- property: Int32 SkinnedMeshRenderer.sortingOrder	get	set	
--Renderer's order within a sorting layer.
SkinnedMeshRenderer.sortingOrder = nil 
--*
--[Comment]
-- property: Transform SkinnedMeshRenderer.transform	get	
--The Transform attached to this GameObject.
SkinnedMeshRenderer.transform = nil 
--*
--[Comment]
-- property: GameObject SkinnedMeshRenderer.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
SkinnedMeshRenderer.gameObject = nil 
--*
--[Comment]
-- property: String SkinnedMeshRenderer.tag	get	set	
--The tag of this game object.
SkinnedMeshRenderer.tag = nil 
--*
--[Comment]
-- property: String SkinnedMeshRenderer.name	get	set	
--The name of the object.
SkinnedMeshRenderer.name = nil 
--*
--[Comment]
-- property: HideFlags SkinnedMeshRenderer.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
SkinnedMeshRenderer.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void BakeMesh(Mesh mesh)
--Creates a snapshot of SkinnedMeshRenderer and stores it in mesh.
--params:
--mesh:    A static mesh that will receive the snapshot of the skinned mesh.

--*
--no static method,use ':'
function SkinnedMeshRenderer:BakeMesh() end 

--[Comment]
--overrides:
--*
--Single GetBlendShapeWeight(Int32 index)
--Returns weight of BlendShape on this renderer.
--*
--no static method,use ':'
function SkinnedMeshRenderer:GetBlendShapeWeight() end 

--[Comment]
--overrides:
--*
--Void SetBlendShapeWeight(Int32 index,Single value)
--Sets the weight in percent of a BlendShape on this Renderer.
--params:
--index:    The index of the BlendShape to modify.
--value:    The weight in percent for this BlendShape.

--*
--no static method,use ':'
function SkinnedMeshRenderer:SetBlendShapeWeight() end 

Space = {} 

Space.World = nil;

Space.Self = nil;

MeshRenderer = {} 
--*
--[Comment]
--consturctor for MeshRenderer overrides:
--*
--MeshRenderer.New()
--*

function MeshRenderer.New() end
--*
--[Comment]
-- property: Mesh MeshRenderer.additionalVertexStreams	get	set	
--Vertex attributes in this mesh will override or add attributes of the primary mesh in the MeshRenderer.
MeshRenderer.additionalVertexStreams = nil 
--*
--[Comment]
-- property: Boolean MeshRenderer.isPartOfStaticBatch	get	
--Has this renderer been statically batched with any other renderers?
MeshRenderer.isPartOfStaticBatch = nil 
--*
--[Comment]
-- property: Matrix4x4 MeshRenderer.worldToLocalMatrix	get	
--Matrix that transforms a point from world space into local space (Read Only).
MeshRenderer.worldToLocalMatrix = nil 
--*
--[Comment]
-- property: Matrix4x4 MeshRenderer.localToWorldMatrix	get	
--Matrix that transforms a point from local space into world space (Read Only).
MeshRenderer.localToWorldMatrix = nil 
--*
--[Comment]
-- property: Boolean MeshRenderer.enabled	get	set	
--Makes the rendered 3D object visible if enabled.
MeshRenderer.enabled = nil 
--*
--[Comment]
-- property: ShadowCastingMode MeshRenderer.shadowCastingMode	get	set	
--Does this object cast shadows?
MeshRenderer.shadowCastingMode = nil 
--*
--[Comment]
-- property: Boolean MeshRenderer.receiveShadows	get	set	
--Does this object receive shadows?
MeshRenderer.receiveShadows = nil 
--*
--[Comment]
-- property: Material MeshRenderer.material	get	set	
--Returns the first instantiated Material assigned to the renderer.
MeshRenderer.material = nil 
--*
--[Comment]
-- property: Material MeshRenderer.sharedMaterial	get	set	
--The shared material of this object.
MeshRenderer.sharedMaterial = nil 
--*
--[Comment]
-- property: Material[] MeshRenderer.materials	get	set	
--Returns all the instantiated materials of this object.
MeshRenderer.materials = nil 
--*
--[Comment]
-- property: Material[] MeshRenderer.sharedMaterials	get	set	
--All the shared materials of this object.
MeshRenderer.sharedMaterials = nil 
--*
--[Comment]
-- property: Bounds MeshRenderer.bounds	get	
--The bounding volume of the renderer (Read Only).
MeshRenderer.bounds = nil 
--*
--[Comment]
-- property: Int32 MeshRenderer.lightmapIndex	get	set	
--The index of the baked lightmap applied to this renderer.
MeshRenderer.lightmapIndex = nil 
--*
--[Comment]
-- property: Int32 MeshRenderer.realtimeLightmapIndex	get	set	
--The index of the realtime lightmap applied to this renderer.
MeshRenderer.realtimeLightmapIndex = nil 
--*
--[Comment]
-- property: Vector4 MeshRenderer.lightmapScaleOffset	get	set	
--The UV scale & offset used for a lightmap.
MeshRenderer.lightmapScaleOffset = nil 
--*
--[Comment]
-- property: MotionVectorGenerationMode MeshRenderer.motionVectorGenerationMode	get	set	
--Specifies the mode for motion vector rendering.
MeshRenderer.motionVectorGenerationMode = nil 
--*
--[Comment]
-- property: Vector4 MeshRenderer.realtimeLightmapScaleOffset	get	set	
--The UV scale & offset used for a realtime lightmap.
MeshRenderer.realtimeLightmapScaleOffset = nil 
--*
--[Comment]
-- property: Boolean MeshRenderer.isVisible	get	
--Is this renderer visible in any camera? (Read Only)
MeshRenderer.isVisible = nil 
--*
--[Comment]
-- property: LightProbeUsage MeshRenderer.lightProbeUsage	get	set	
--The light probe interpolation type.
MeshRenderer.lightProbeUsage = nil 
--*
--[Comment]
-- property: GameObject MeshRenderer.lightProbeProxyVolumeOverride	get	set	
--If set, the Renderer will use the Light Probe Proxy Volume component attached to the source GameObject.
MeshRenderer.lightProbeProxyVolumeOverride = nil 
--*
--[Comment]
-- property: Transform MeshRenderer.probeAnchor	get	set	
--If set, Renderer will use this Transform's position to find the light or reflection probe.
MeshRenderer.probeAnchor = nil 
--*
--[Comment]
-- property: ReflectionProbeUsage MeshRenderer.reflectionProbeUsage	get	set	
--Should reflection probes be used for this Renderer?
MeshRenderer.reflectionProbeUsage = nil 
--*
--[Comment]
-- property: String MeshRenderer.sortingLayerName	get	set	
--Name of the Renderer's sorting layer.
MeshRenderer.sortingLayerName = nil 
--*
--[Comment]
-- property: Int32 MeshRenderer.sortingLayerID	get	set	
--Unique ID of the Renderer's sorting layer.
MeshRenderer.sortingLayerID = nil 
--*
--[Comment]
-- property: Int32 MeshRenderer.sortingOrder	get	set	
--Renderer's order within a sorting layer.
MeshRenderer.sortingOrder = nil 
--*
--[Comment]
-- property: Transform MeshRenderer.transform	get	
--The Transform attached to this GameObject.
MeshRenderer.transform = nil 
--*
--[Comment]
-- property: GameObject MeshRenderer.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
MeshRenderer.gameObject = nil 
--*
--[Comment]
-- property: String MeshRenderer.tag	get	set	
--The tag of this game object.
MeshRenderer.tag = nil 
--*
--[Comment]
-- property: String MeshRenderer.name	get	set	
--The name of the object.
MeshRenderer.name = nil 
--*
--[Comment]
-- property: HideFlags MeshRenderer.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
MeshRenderer.hideFlags = nil 
--*
BoxCollider = {} 
--*
--[Comment]
--consturctor for BoxCollider overrides:
--*
--BoxCollider.New()
--*

function BoxCollider.New() end
--*
--[Comment]
-- property: Vector3 BoxCollider.center	get	set	
--The center of the box, measured in the object's local space.
BoxCollider.center = nil 
--*
--[Comment]
-- property: Vector3 BoxCollider.size	get	set	
--The size of the box, measured in the object's local space.
BoxCollider.size = nil 
--*
--[Comment]
-- property: Boolean BoxCollider.enabled	get	set	
--Enabled Colliders will collide with other colliders, disabled Colliders won't.
BoxCollider.enabled = nil 
--*
--[Comment]
-- property: Rigidbody BoxCollider.attachedRigidbody	get	
--The rigidbody the collider is attached to.
BoxCollider.attachedRigidbody = nil 
--*
--[Comment]
-- property: Boolean BoxCollider.isTrigger	get	set	
--Is the collider a trigger?
BoxCollider.isTrigger = nil 
--*
--[Comment]
-- property: Single BoxCollider.contactOffset	get	set	
--Contact offset value of this collider.
BoxCollider.contactOffset = nil 
--*
--[Comment]
-- property: PhysicMaterial BoxCollider.material	get	set	
--The material used by the collider.
BoxCollider.material = nil 
--*
--[Comment]
-- property: PhysicMaterial BoxCollider.sharedMaterial	get	set	
--The shared physic material of this collider.
BoxCollider.sharedMaterial = nil 
--*
--[Comment]
-- property: Bounds BoxCollider.bounds	get	
--The world space bounding volume of the collider.
BoxCollider.bounds = nil 
--*
--[Comment]
-- property: Transform BoxCollider.transform	get	
--The Transform attached to this GameObject.
BoxCollider.transform = nil 
--*
--[Comment]
-- property: GameObject BoxCollider.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
BoxCollider.gameObject = nil 
--*
--[Comment]
-- property: String BoxCollider.tag	get	set	
--The tag of this game object.
BoxCollider.tag = nil 
--*
--[Comment]
-- property: String BoxCollider.name	get	set	
--The name of the object.
BoxCollider.name = nil 
--*
--[Comment]
-- property: HideFlags BoxCollider.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
BoxCollider.hideFlags = nil 
--*
MeshCollider = {} 
--*
--[Comment]
--consturctor for MeshCollider overrides:
--*
--MeshCollider.New()
--*

function MeshCollider.New() end
--*
--[Comment]
-- property: Mesh MeshCollider.sharedMesh	get	set	
--The mesh object used for collision detection.
MeshCollider.sharedMesh = nil 
--*
--[Comment]
-- property: Boolean MeshCollider.convex	get	set	
--Use a convex collider from the mesh.
MeshCollider.convex = nil 
--*
--[Comment]
-- property: Boolean MeshCollider.inflateMesh	get	set	
--Allow the physics engine to increase the volume of the input mesh in attempt to generate a valid convex mesh.
MeshCollider.inflateMesh = nil 
--*
--[Comment]
-- property: Single MeshCollider.skinWidth	get	set	
--Used when set to inflateMesh to determine how much inflation is acceptable.
MeshCollider.skinWidth = nil 
--*
--[Comment]
-- property: Boolean MeshCollider.enabled	get	set	
--Enabled Colliders will collide with other colliders, disabled Colliders won't.
MeshCollider.enabled = nil 
--*
--[Comment]
-- property: Rigidbody MeshCollider.attachedRigidbody	get	
--The rigidbody the collider is attached to.
MeshCollider.attachedRigidbody = nil 
--*
--[Comment]
-- property: Boolean MeshCollider.isTrigger	get	set	
--Is the collider a trigger?
MeshCollider.isTrigger = nil 
--*
--[Comment]
-- property: Single MeshCollider.contactOffset	get	set	
--Contact offset value of this collider.
MeshCollider.contactOffset = nil 
--*
--[Comment]
-- property: PhysicMaterial MeshCollider.material	get	set	
--The material used by the collider.
MeshCollider.material = nil 
--*
--[Comment]
-- property: PhysicMaterial MeshCollider.sharedMaterial	get	set	
--The shared physic material of this collider.
MeshCollider.sharedMaterial = nil 
--*
--[Comment]
-- property: Bounds MeshCollider.bounds	get	
--The world space bounding volume of the collider.
MeshCollider.bounds = nil 
--*
--[Comment]
-- property: Transform MeshCollider.transform	get	
--The Transform attached to this GameObject.
MeshCollider.transform = nil 
--*
--[Comment]
-- property: GameObject MeshCollider.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
MeshCollider.gameObject = nil 
--*
--[Comment]
-- property: String MeshCollider.tag	get	set	
--The tag of this game object.
MeshCollider.tag = nil 
--*
--[Comment]
-- property: String MeshCollider.name	get	set	
--The name of the object.
MeshCollider.name = nil 
--*
--[Comment]
-- property: HideFlags MeshCollider.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
MeshCollider.hideFlags = nil 
--*
SphereCollider = {} 
--*
--[Comment]
--consturctor for SphereCollider overrides:
--*
--SphereCollider.New()
--*

function SphereCollider.New() end
--*
--[Comment]
-- property: Vector3 SphereCollider.center	get	set	
--The center of the sphere in the object's local space.
SphereCollider.center = nil 
--*
--[Comment]
-- property: Single SphereCollider.radius	get	set	
--The radius of the sphere measured in the object's local space.
SphereCollider.radius = nil 
--*
--[Comment]
-- property: Boolean SphereCollider.enabled	get	set	
--Enabled Colliders will collide with other colliders, disabled Colliders won't.
SphereCollider.enabled = nil 
--*
--[Comment]
-- property: Rigidbody SphereCollider.attachedRigidbody	get	
--The rigidbody the collider is attached to.
SphereCollider.attachedRigidbody = nil 
--*
--[Comment]
-- property: Boolean SphereCollider.isTrigger	get	set	
--Is the collider a trigger?
SphereCollider.isTrigger = nil 
--*
--[Comment]
-- property: Single SphereCollider.contactOffset	get	set	
--Contact offset value of this collider.
SphereCollider.contactOffset = nil 
--*
--[Comment]
-- property: PhysicMaterial SphereCollider.material	get	set	
--The material used by the collider.
SphereCollider.material = nil 
--*
--[Comment]
-- property: PhysicMaterial SphereCollider.sharedMaterial	get	set	
--The shared physic material of this collider.
SphereCollider.sharedMaterial = nil 
--*
--[Comment]
-- property: Bounds SphereCollider.bounds	get	
--The world space bounding volume of the collider.
SphereCollider.bounds = nil 
--*
--[Comment]
-- property: Transform SphereCollider.transform	get	
--The Transform attached to this GameObject.
SphereCollider.transform = nil 
--*
--[Comment]
-- property: GameObject SphereCollider.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
SphereCollider.gameObject = nil 
--*
--[Comment]
-- property: String SphereCollider.tag	get	set	
--The tag of this game object.
SphereCollider.tag = nil 
--*
--[Comment]
-- property: String SphereCollider.name	get	set	
--The name of the object.
SphereCollider.name = nil 
--*
--[Comment]
-- property: HideFlags SphereCollider.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
SphereCollider.hideFlags = nil 
--*
CharacterController = {} 
--*
--[Comment]
--consturctor for CharacterController overrides:
--*
--CharacterController.New()
--*

function CharacterController.New() end
--*
--[Comment]
-- property: Boolean CharacterController.isGrounded	get	
--Was the CharacterController touching the ground during the last move?
CharacterController.isGrounded = nil 
--*
--[Comment]
-- property: Vector3 CharacterController.velocity	get	
--The current relative velocity of the Character (see notes).
CharacterController.velocity = nil 
--*
--[Comment]
-- property: CollisionFlags CharacterController.collisionFlags	get	
--What part of the capsule collided with the environment during the last CharacterController.Move call.
CharacterController.collisionFlags = nil 
--*
--[Comment]
-- property: Single CharacterController.radius	get	set	
--The radius of the character's capsule.
CharacterController.radius = nil 
--*
--[Comment]
-- property: Single CharacterController.height	get	set	
--The height of the character's capsule.
CharacterController.height = nil 
--*
--[Comment]
-- property: Vector3 CharacterController.center	get	set	
--The center of the character's capsule relative to the transform's position.
CharacterController.center = nil 
--*
--[Comment]
-- property: Single CharacterController.slopeLimit	get	set	
--The character controllers slope limit in degrees.
CharacterController.slopeLimit = nil 
--*
--[Comment]
-- property: Single CharacterController.stepOffset	get	set	
--The character controllers step offset in meters.
CharacterController.stepOffset = nil 
--*
--[Comment]
-- property: Single CharacterController.skinWidth	get	set	
--The character's collision skin width.
CharacterController.skinWidth = nil 
--*
--[Comment]
-- property: Boolean CharacterController.detectCollisions	get	set	
--Determines whether other rigidbodies or character controllers collide with this character controller (by default this is always enabled).
CharacterController.detectCollisions = nil 
--*
--[Comment]
-- property: Boolean CharacterController.enableOverlapRecovery	get	set	
--Enables or disables overlap recovery.  Enables or disables overlap recovery. Used to depenetrate character controllers from static objects when an overlap is detected.
CharacterController.enableOverlapRecovery = nil 
--*
--[Comment]
-- property: Boolean CharacterController.enabled	get	set	
--Enabled Colliders will collide with other colliders, disabled Colliders won't.
CharacterController.enabled = nil 
--*
--[Comment]
-- property: Rigidbody CharacterController.attachedRigidbody	get	
--The rigidbody the collider is attached to.
CharacterController.attachedRigidbody = nil 
--*
--[Comment]
-- property: Boolean CharacterController.isTrigger	get	set	
--Is the collider a trigger?
CharacterController.isTrigger = nil 
--*
--[Comment]
-- property: Single CharacterController.contactOffset	get	set	
--Contact offset value of this collider.
CharacterController.contactOffset = nil 
--*
--[Comment]
-- property: PhysicMaterial CharacterController.material	get	set	
--The material used by the collider.
CharacterController.material = nil 
--*
--[Comment]
-- property: PhysicMaterial CharacterController.sharedMaterial	get	set	
--The shared physic material of this collider.
CharacterController.sharedMaterial = nil 
--*
--[Comment]
-- property: Bounds CharacterController.bounds	get	
--The world space bounding volume of the collider.
CharacterController.bounds = nil 
--*
--[Comment]
-- property: Transform CharacterController.transform	get	
--The Transform attached to this GameObject.
CharacterController.transform = nil 
--*
--[Comment]
-- property: GameObject CharacterController.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
CharacterController.gameObject = nil 
--*
--[Comment]
-- property: String CharacterController.tag	get	set	
--The tag of this game object.
CharacterController.tag = nil 
--*
--[Comment]
-- property: String CharacterController.name	get	set	
--The name of the object.
CharacterController.name = nil 
--*
--[Comment]
-- property: HideFlags CharacterController.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
CharacterController.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Boolean SimpleMove(Vector3 speed)
--Moves the character with speed.
--*
--no static method,use ':'
function CharacterController:SimpleMove() end 

--[Comment]
--overrides:
--*
--CollisionFlags Move(Vector3 motion)
--A more complex move function taking absolute movement deltas.
--*
--no static method,use ':'
function CharacterController:Move() end 

CapsuleCollider = {} 
--*
--[Comment]
--consturctor for CapsuleCollider overrides:
--*
--CapsuleCollider.New()
--*

function CapsuleCollider.New() end
--*
--[Comment]
-- property: Vector3 CapsuleCollider.center	get	set	
--The center of the capsule, measured in the object's local space.
CapsuleCollider.center = nil 
--*
--[Comment]
-- property: Single CapsuleCollider.radius	get	set	
--The radius of the sphere, measured in the object's local space.
CapsuleCollider.radius = nil 
--*
--[Comment]
-- property: Single CapsuleCollider.height	get	set	
--The height of the capsule meased in the object's local space.
CapsuleCollider.height = nil 
--*
--[Comment]
-- property: Int32 CapsuleCollider.direction	get	set	
--The direction of the capsule.
CapsuleCollider.direction = nil 
--*
--[Comment]
-- property: Boolean CapsuleCollider.enabled	get	set	
--Enabled Colliders will collide with other colliders, disabled Colliders won't.
CapsuleCollider.enabled = nil 
--*
--[Comment]
-- property: Rigidbody CapsuleCollider.attachedRigidbody	get	
--The rigidbody the collider is attached to.
CapsuleCollider.attachedRigidbody = nil 
--*
--[Comment]
-- property: Boolean CapsuleCollider.isTrigger	get	set	
--Is the collider a trigger?
CapsuleCollider.isTrigger = nil 
--*
--[Comment]
-- property: Single CapsuleCollider.contactOffset	get	set	
--Contact offset value of this collider.
CapsuleCollider.contactOffset = nil 
--*
--[Comment]
-- property: PhysicMaterial CapsuleCollider.material	get	set	
--The material used by the collider.
CapsuleCollider.material = nil 
--*
--[Comment]
-- property: PhysicMaterial CapsuleCollider.sharedMaterial	get	set	
--The shared physic material of this collider.
CapsuleCollider.sharedMaterial = nil 
--*
--[Comment]
-- property: Bounds CapsuleCollider.bounds	get	
--The world space bounding volume of the collider.
CapsuleCollider.bounds = nil 
--*
--[Comment]
-- property: Transform CapsuleCollider.transform	get	
--The Transform attached to this GameObject.
CapsuleCollider.transform = nil 
--*
--[Comment]
-- property: GameObject CapsuleCollider.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
CapsuleCollider.gameObject = nil 
--*
--[Comment]
-- property: String CapsuleCollider.tag	get	set	
--The tag of this game object.
CapsuleCollider.tag = nil 
--*
--[Comment]
-- property: String CapsuleCollider.name	get	set	
--The name of the object.
CapsuleCollider.name = nil 
--*
--[Comment]
-- property: HideFlags CapsuleCollider.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
CapsuleCollider.hideFlags = nil 
--*
Animation = {} 
--*
--[Comment]
--consturctor for Animation overrides:
--*
--Animation.New()
--*

function Animation.New() end
--*
--[Comment]
-- property: AnimationClip Animation.clip	get	set	
--The default animation.
Animation.clip = nil 
--*
--[Comment]
-- property: Boolean Animation.playAutomatically	get	set	
--Should the default animation clip (the Animation.clip property) automatically start playing on startup?
Animation.playAutomatically = nil 
--*
--[Comment]
-- property: WrapMode Animation.wrapMode	get	set	
--How should time beyond the playback range of the clip be treated?
Animation.wrapMode = nil 
--*
--[Comment]
-- property: Boolean Animation.isPlaying	get	
--Are we playing any animations?
Animation.isPlaying = nil 
--*
--[Comment]
-- property: AnimationState Animation.Item	get	
Animation.Item = nil 
--*
--[Comment]
-- property: Boolean Animation.animatePhysics	get	set	
--When turned on, animations will be executed in the physics loop. This is only useful in conjunction with kinematic rigidbodies.
Animation.animatePhysics = nil 
--*
--[Comment]
-- property: AnimationCullingType Animation.cullingType	get	set	
--Controls culling of this Animation component.
Animation.cullingType = nil 
--*
--[Comment]
-- property: Bounds Animation.localBounds	get	set	
--AABB of this Animation animation component in local space.
Animation.localBounds = nil 
--*
--[Comment]
-- property: Boolean Animation.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
Animation.enabled = nil 
--*
--[Comment]
-- property: Boolean Animation.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
Animation.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform Animation.transform	get	
--The Transform attached to this GameObject.
Animation.transform = nil 
--*
--[Comment]
-- property: GameObject Animation.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
Animation.gameObject = nil 
--*
--[Comment]
-- property: String Animation.tag	get	set	
--The tag of this game object.
Animation.tag = nil 
--*
--[Comment]
-- property: String Animation.name	get	set	
--The name of the object.
Animation.name = nil 
--*
--[Comment]
-- property: HideFlags Animation.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Animation.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void Stop()
--Stops all playing animations that were started with this Animation.
--*
--Void Stop(String name)
--Stops an animation named name.
--*
--no static method,use ':'
function Animation:Stop() end 

--[Comment]
--overrides:
--*
--Void Rewind(String name)
--Rewinds the animation named name.
--*
--Void Rewind()
--Rewinds all animations.
--*
--no static method,use ':'
function Animation:Rewind() end 

--[Comment]
--overrides:
--*
--Void Sample()
--Samples animations at the current state.
--*
--no static method,use ':'
function Animation:Sample() end 

--[Comment]
--overrides:
--*
--Boolean IsPlaying(String name)
--Is the animation named name playing?
--*
--no static method,use ':'
function Animation:IsPlaying() end 

--[Comment]
--overrides:
--*
--AnimationState get_Item(String name)
--*
--no static method,use ':'
function Animation:get_Item() end 

--[Comment]
--overrides:
--*
--Boolean Play()
--*
--Boolean Play(PlayMode mode)
--Plays an animation without any blending.
--*
--Boolean Play(String animation,PlayMode mode)
--Plays an animation without any blending.
--*
--Boolean Play(String animation)
--Plays an animation without any blending.
--*
--no static method,use ':'
function Animation:Play() end 

--[Comment]
--overrides:
--*
--Void CrossFade(String animation,Single fadeLength,PlayMode mode)
--Fades the animation with name animation in over a period of time seconds and fades other animations out.
--*
--Void CrossFade(String animation,Single fadeLength)
--Fades the animation with name animation in over a period of time seconds and fades other animations out.
--*
--Void CrossFade(String animation)
--Fades the animation with name animation in over a period of time seconds and fades other animations out.
--*
--no static method,use ':'
function Animation:CrossFade() end 

--[Comment]
--overrides:
--*
--Void Blend(String animation,Single targetWeight,Single fadeLength)
--Blends the animation named animation towards targetWeight over the next time seconds.
--*
--Void Blend(String animation,Single targetWeight)
--Blends the animation named animation towards targetWeight over the next time seconds.
--*
--Void Blend(String animation)
--Blends the animation named animation towards targetWeight over the next time seconds.
--*
--no static method,use ':'
function Animation:Blend() end 

--[Comment]
--overrides:
--*
--AnimationState CrossFadeQueued(String animation,Single fadeLength,QueueMode queue,PlayMode mode)
--Cross fades an animation after previous animations has finished playing.
--*
--AnimationState CrossFadeQueued(String animation,Single fadeLength,QueueMode queue)
--Cross fades an animation after previous animations has finished playing.
--*
--AnimationState CrossFadeQueued(String animation,Single fadeLength)
--Cross fades an animation after previous animations has finished playing.
--*
--AnimationState CrossFadeQueued(String animation)
--Cross fades an animation after previous animations has finished playing.
--*
--no static method,use ':'
function Animation:CrossFadeQueued() end 

--[Comment]
--overrides:
--*
--AnimationState PlayQueued(String animation,QueueMode queue,PlayMode mode)
--Plays an animation after previous animations has finished playing.
--*
--AnimationState PlayQueued(String animation,QueueMode queue)
--Plays an animation after previous animations has finished playing.
--*
--AnimationState PlayQueued(String animation)
--Plays an animation after previous animations has finished playing.
--*
--no static method,use ':'
function Animation:PlayQueued() end 

--[Comment]
--overrides:
--*
--Void AddClip(AnimationClip clip,String newName)
--Adds a clip to the animation with name newName.
--*
--Void AddClip(AnimationClip clip,String newName,Int32 firstFrame,Int32 lastFrame,Boolean addLoopFrame)
--Adds clip to the only play between firstFrame and lastFrame. The new clip will also be added to the animation with name newName.
--params:
--addLoopFrame:    Should an extra frame be inserted at the end that matches the first frame? Turn this on if you are making a looping animation.

--*
--Void AddClip(AnimationClip clip,String newName,Int32 firstFrame,Int32 lastFrame)
--Adds clip to the only play between firstFrame and lastFrame. The new clip will also be added to the animation with name newName.
--params:
--addLoopFrame:    Should an extra frame be inserted at the end that matches the first frame? Turn this on if you are making a looping animation.

--*
--no static method,use ':'
function Animation:AddClip() end 

--[Comment]
--overrides:
--*
--Void RemoveClip(AnimationClip clip)
--Remove clip from the animation list.
--*
--Void RemoveClip(String clipName)
--Remove clip from the animation list.
--*
--no static method,use ':'
function Animation:RemoveClip() end 

--[Comment]
--overrides:
--*
--Int32 GetClipCount()
--Get the number of clips currently assigned to this animation.
--*
--no static method,use ':'
function Animation:GetClipCount() end 

--[Comment]
--overrides:
--*
--Void SyncLayer(Int32 layer)
--*
--no static method,use ':'
function Animation:SyncLayer() end 

--[Comment]
--overrides:
--*
--IEnumerator GetEnumerator()
--*
--no static method,use ':'
function Animation:GetEnumerator() end 

--[Comment]
--overrides:
--*
--AnimationClip GetClip(String name)
--*
--no static method,use ':'
function Animation:GetClip() end 

AnimationClip = {} 
--*
--[Comment]
--consturctor for AnimationClip overrides:
--*
--AnimationClip.New()
--Creates a new animation clip.
--*

function AnimationClip.New() end
--*
--[Comment]
-- property: Single AnimationClip.length	get	
--Animation length in seconds. (Read Only)
AnimationClip.length = nil 
--*
--[Comment]
-- property: Single AnimationClip.frameRate	get	set	
--Frame rate at which keyframes are sampled. (Read Only)
AnimationClip.frameRate = nil 
--*
--[Comment]
-- property: WrapMode AnimationClip.wrapMode	get	set	
--Sets the default wrap mode used in the animation state.
AnimationClip.wrapMode = nil 
--*
--[Comment]
-- property: Bounds AnimationClip.localBounds	get	set	
--AABB of this Animation Clip in local space of Animation component that it is attached too.
AnimationClip.localBounds = nil 
--*
--[Comment]
-- property: Boolean AnimationClip.legacy	get	set	
--Set to true if the AnimationClip will be used with the Legacy Animation component ( instead of the Animator ).
AnimationClip.legacy = nil 
--*
--[Comment]
-- property: Boolean AnimationClip.humanMotion	get	
--Returns true if the animation contains curve that drives a humanoid rig.
AnimationClip.humanMotion = nil 
--*
--[Comment]
-- property: AnimationEvent[] AnimationClip.events	get	set	
--Animation Events for this animation clip.
AnimationClip.events = nil 
--*
--[Comment]
-- property: Single AnimationClip.averageDuration	get	
AnimationClip.averageDuration = nil 
--*
--[Comment]
-- property: Single AnimationClip.averageAngularSpeed	get	
AnimationClip.averageAngularSpeed = nil 
--*
--[Comment]
-- property: Vector3 AnimationClip.averageSpeed	get	
AnimationClip.averageSpeed = nil 
--*
--[Comment]
-- property: Single AnimationClip.apparentSpeed	get	
AnimationClip.apparentSpeed = nil 
--*
--[Comment]
-- property: Boolean AnimationClip.isLooping	get	
AnimationClip.isLooping = nil 
--*
--[Comment]
-- property: Boolean AnimationClip.isHumanMotion	get	
AnimationClip.isHumanMotion = nil 
--*
--[Comment]
-- property: String AnimationClip.name	get	set	
--The name of the object.
AnimationClip.name = nil 
--*
--[Comment]
-- property: HideFlags AnimationClip.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
AnimationClip.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void SampleAnimation(GameObject go,Single time)
--Samples an animation at a given time for any animated properties.
--params:
--go:    The animated game object.
--time:    The time to sample an animation.

--*
--no static method,use ':'
function AnimationClip:SampleAnimation() end 

--[Comment]
--overrides:
--*
--Void SetCurve(String relativePath,Type type,String propertyName,AnimationCurve curve)
--Assigns the curve to animate a specific property.
--params:
--relativePath:    Path to the game object this curve applies to. The relativePath         is formatted similar to a pathname, e.g. "rootspineleftArm".  If relativePath         is empty it refers to the game object the animation clip is attached to.
--type:    The class type of the component that is animated.
--propertyName:    The name or path to the property being animated.
--curve:    The animation curve.

--*
--no static method,use ':'
function AnimationClip:SetCurve() end 

--[Comment]
--overrides:
--*
--Void EnsureQuaternionContinuity()
--Realigns quaternion keys to ensure shortest interpolation paths.
--*
--no static method,use ':'
function AnimationClip:EnsureQuaternionContinuity() end 

--[Comment]
--overrides:
--*
--Void ClearCurves()
--Clears all curves from the clip.
--*
--no static method,use ':'
function AnimationClip:ClearCurves() end 

--[Comment]
--overrides:
--*
--Void AddEvent(AnimationEvent evt)
--Adds an animation event to the clip.
--params:
--evt:    AnimationEvent to add.

--*
--no static method,use ':'
function AnimationClip:AddEvent() end 

AnimationState = {} 
--*
--[Comment]
--consturctor for AnimationState overrides:
--*
--AnimationState.New()
--*

function AnimationState.New() end
--*
--[Comment]
-- property: Boolean AnimationState.enabled	get	set	
--Enables / disables the animation.
AnimationState.enabled = nil 
--*
--[Comment]
-- property: Single AnimationState.weight	get	set	
--The weight of animation.
AnimationState.weight = nil 
--*
--[Comment]
-- property: WrapMode AnimationState.wrapMode	get	set	
--Wrapping mode of the animation.
AnimationState.wrapMode = nil 
--*
--[Comment]
-- property: Single AnimationState.time	get	set	
--The current time of the animation.
AnimationState.time = nil 
--*
--[Comment]
-- property: Single AnimationState.normalizedTime	get	set	
--The normalized time of the animation.
AnimationState.normalizedTime = nil 
--*
--[Comment]
-- property: Single AnimationState.speed	get	set	
--The playback speed of the animation. 1 is normal playback speed.
AnimationState.speed = nil 
--*
--[Comment]
-- property: Single AnimationState.normalizedSpeed	get	set	
--The normalized playback speed.
AnimationState.normalizedSpeed = nil 
--*
--[Comment]
-- property: Single AnimationState.length	get	
--The length of the animation clip in seconds.
AnimationState.length = nil 
--*
--[Comment]
-- property: Int32 AnimationState.layer	get	set	
AnimationState.layer = nil 
--*
--[Comment]
-- property: AnimationClip AnimationState.clip	get	
--The clip that is being played by this animation state.
AnimationState.clip = nil 
--*
--[Comment]
-- property: String AnimationState.name	get	set	
--The name of the animation.
AnimationState.name = nil 
--*
--[Comment]
-- property: AnimationBlendMode AnimationState.blendMode	get	set	
--Which blend mode should be used?
AnimationState.blendMode = nil 
--*
--[Comment]
--overrides:
--*
--Void AddMixingTransform(Transform mix,Boolean recursive)
--Adds a transform which should be animated. This allows you to reduce the number of animations you have to create.
--params:
--mix:    The transform to animate.
--recursive:    Whether to also animate all children of the specified transform.

--*
--Void AddMixingTransform(Transform mix)
--Adds a transform which should be animated. This allows you to reduce the number of animations you have to create.
--params:
--mix:    The transform to animate.
--recursive:    Whether to also animate all children of the specified transform.

--*
--no static method,use ':'
function AnimationState:AddMixingTransform() end 

--[Comment]
--overrides:
--*
--Void RemoveMixingTransform(Transform mix)
--Removes a transform which should be animated.
--*
--no static method,use ':'
function AnimationState:RemoveMixingTransform() end 

AnimationBlendMode = {} 

AnimationBlendMode.Blend = nil;

AnimationBlendMode.Additive = nil;

QueueMode = {} 

QueueMode.CompleteOthers = nil;

QueueMode.PlayNow = nil;

PlayMode = {} 

PlayMode.StopSameLayer = nil;

PlayMode.StopAll = nil;

WrapMode = {} 

WrapMode.Once = nil;

WrapMode.Loop = nil;

WrapMode.PingPong = nil;

WrapMode.Default = nil;

WrapMode.ClampForever = nil;

WrapMode.Clamp = nil;

QualitySettings = {} 
--*
--[Comment]
--consturctor for QualitySettings overrides:
--*
--QualitySettings.New()
--*

function QualitySettings.New() end
--*
--[Comment]
-- property: String[] QualitySettings.names	get	
--The indexed list of available Quality Settings.
QualitySettings.names = nil 
--*
--[Comment]
-- property: Int32 QualitySettings.pixelLightCount	get	set	
--The maximum number of pixel lights that should affect any object.
QualitySettings.pixelLightCount = nil 
--*
--[Comment]
-- property: ShadowQuality QualitySettings.shadows	get	set	
--Realtime Shadows type to be used.
QualitySettings.shadows = nil 
--*
--[Comment]
-- property: ShadowProjection QualitySettings.shadowProjection	get	set	
--Directional light shadow projection.
QualitySettings.shadowProjection = nil 
--*
--[Comment]
-- property: Int32 QualitySettings.shadowCascades	get	set	
--Number of cascades to use for directional light shadows.
QualitySettings.shadowCascades = nil 
--*
--[Comment]
-- property: Single QualitySettings.shadowDistance	get	set	
--Shadow drawing distance.
QualitySettings.shadowDistance = nil 
--*
--[Comment]
-- property: ShadowResolution QualitySettings.shadowResolution	get	set	
--The default resolution of the shadow maps.
QualitySettings.shadowResolution = nil 
--*
--[Comment]
-- property: Single QualitySettings.shadowNearPlaneOffset	get	set	
--Offset shadow frustum near plane.
QualitySettings.shadowNearPlaneOffset = nil 
--*
--[Comment]
-- property: Single QualitySettings.shadowCascade2Split	get	set	
--The normalized cascade distribution for a 2 cascade setup. The value defines the position of the cascade with respect to Zero.
QualitySettings.shadowCascade2Split = nil 
--*
--[Comment]
-- property: Vector3 QualitySettings.shadowCascade4Split	get	set	
--The normalized cascade start position for a 4 cascade setup. Each member of the vector defines the normalized position of the coresponding cascade with respect to Zero.
QualitySettings.shadowCascade4Split = nil 
--*
--[Comment]
-- property: Int32 QualitySettings.masterTextureLimit	get	set	
--A texture size limit applied to all textures.
QualitySettings.masterTextureLimit = nil 
--*
--[Comment]
-- property: AnisotropicFiltering QualitySettings.anisotropicFiltering	get	set	
--Global anisotropic filtering mode.
QualitySettings.anisotropicFiltering = nil 
--*
--[Comment]
-- property: Single QualitySettings.lodBias	get	set	
--Global multiplier for the LOD's switching distance.
QualitySettings.lodBias = nil 
--*
--[Comment]
-- property: Int32 QualitySettings.maximumLODLevel	get	set	
--A maximum LOD level. All LOD groups.
QualitySettings.maximumLODLevel = nil 
--*
--[Comment]
-- property: Int32 QualitySettings.particleRaycastBudget	get	set	
--Budget for how many ray casts can be performed per frame for approximate collision testing.
QualitySettings.particleRaycastBudget = nil 
--*
--[Comment]
-- property: Boolean QualitySettings.softParticles	get	set	
--Should soft blending be used for particles?
QualitySettings.softParticles = nil 
--*
--[Comment]
-- property: Boolean QualitySettings.softVegetation	get	set	
--Use a two-pass shader for the vegetation in the terrain engine.
QualitySettings.softVegetation = nil 
--*
--[Comment]
-- property: Boolean QualitySettings.realtimeReflectionProbes	get	set	
--Enables realtime reflection probes.
QualitySettings.realtimeReflectionProbes = nil 
--*
--[Comment]
-- property: Boolean QualitySettings.billboardsFaceCameraPosition	get	set	
--If enabled, billboards will face towards camera position rather than camera orientation.
QualitySettings.billboardsFaceCameraPosition = nil 
--*
--[Comment]
-- property: Int32 QualitySettings.maxQueuedFrames	get	set	
--Maximum number of frames queued up by graphics driver.
QualitySettings.maxQueuedFrames = nil 
--*
--[Comment]
-- property: Int32 QualitySettings.vSyncCount	get	set	
--The VSync Count.
QualitySettings.vSyncCount = nil 
--*
--[Comment]
-- property: Int32 QualitySettings.antiAliasing	get	set	
--Set The AA Filtering option.
QualitySettings.antiAliasing = nil 
--*
--[Comment]
-- property: ColorSpace QualitySettings.desiredColorSpace	get	
--Desired color space (Read Only).
QualitySettings.desiredColorSpace = nil 
--*
--[Comment]
-- property: ColorSpace QualitySettings.activeColorSpace	get	
--Active color space (Read Only).
QualitySettings.activeColorSpace = nil 
--*
--[Comment]
-- property: BlendWeights QualitySettings.blendWeights	get	set	
--Blend weights.
QualitySettings.blendWeights = nil 
--*
--[Comment]
-- property: Int32 QualitySettings.asyncUploadTimeSlice	get	set	
--Async texture upload provides timesliced async texture upload on the render thread with tight control over memory and timeslicing. There are no allocations except for the ones which driver has to do. To read data and upload texture data a ringbuffer whose size can be controlled is re-used.  Use asyncUploadTimeSlice to set the time-slice in milliseconds for asynchronous texture uploads per  frame. Minimum value is 1 and maximum is 33.
QualitySettings.asyncUploadTimeSlice = nil 
--*
--[Comment]
-- property: Int32 QualitySettings.asyncUploadBufferSize	get	set	
--Async texture upload provides timesliced async texture upload on the render thread with tight control over memory and timeslicing. There are no allocations except for the ones which driver has to do. To read data and upload texture data a ringbuffer whose size can be controlled is re-used.  Use asyncUploadBufferSize to set the buffer size for asynchronous texture uploads. The size is in megabytes. Minimum value is 2 and maximum is 512. Although the buffer will resize automatically to fit the largest texture currently loading, it is recommended to set the value approximately to the size of biggest texture used in the scene to avoid re-sizing of the buffer which can incur performance cost.
QualitySettings.asyncUploadBufferSize = nil 
--*
--[Comment]
-- property: String QualitySettings.name	get	set	
--The name of the object.
QualitySettings.name = nil 
--*
--[Comment]
-- property: HideFlags QualitySettings.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
QualitySettings.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Int32 GetQualityLevel()
--Returns the current graphics quality level.
--*
--static method,use '.'
function QualitySettings.GetQualityLevel() end 

--[Comment]
--overrides:
--*
--Void SetQualityLevel(Int32 index,Boolean applyExpensiveChanges)
--Sets a new graphics quality level.
--params:
--index:    Quality index to set.
--applyExpensiveChanges:    Should expensive changes be applied (Anti-aliasing etc).

--*
--Void SetQualityLevel(Int32 index)
--*
--static method,use '.'
function QualitySettings.SetQualityLevel() end 

--[Comment]
--overrides:
--*
--Void IncreaseLevel(Boolean applyExpensiveChanges)
--Increase the current quality level.
--params:
--applyExpensiveChanges:    Should expensive changes be applied (Anti-aliasing etc).

--*
--Void IncreaseLevel()
--*
--static method,use '.'
function QualitySettings.IncreaseLevel() end 

--[Comment]
--overrides:
--*
--Void DecreaseLevel(Boolean applyExpensiveChanges)
--Decrease the current quality level.
--params:
--applyExpensiveChanges:    Should expensive changes be applied (Anti-aliasing etc).

--*
--Void DecreaseLevel()
--*
--static method,use '.'
function QualitySettings.DecreaseLevel() end 

RenderSettings = {} 
--*
--[Comment]
--consturctor for RenderSettings overrides:
--*
--RenderSettings.New()
--*

function RenderSettings.New() end
--*
--[Comment]
-- property: Boolean RenderSettings.fog	get	set	
--Is fog enabled?
RenderSettings.fog = nil 
--*
--[Comment]
-- property: FogMode RenderSettings.fogMode	get	set	
--Fog mode to use.
RenderSettings.fogMode = nil 
--*
--[Comment]
-- property: Color RenderSettings.fogColor	get	set	
--The color of the fog.
RenderSettings.fogColor = nil 
--*
--[Comment]
-- property: Single RenderSettings.fogDensity	get	set	
--The density of the exponential fog.
RenderSettings.fogDensity = nil 
--*
--[Comment]
-- property: Single RenderSettings.fogStartDistance	get	set	
--The starting distance of linear fog.
RenderSettings.fogStartDistance = nil 
--*
--[Comment]
-- property: Single RenderSettings.fogEndDistance	get	set	
--The ending distance of linear fog.
RenderSettings.fogEndDistance = nil 
--*
--[Comment]
-- property: AmbientMode RenderSettings.ambientMode	get	set	
--Ambient lighting mode.
RenderSettings.ambientMode = nil 
--*
--[Comment]
-- property: Color RenderSettings.ambientSkyColor	get	set	
--Ambient lighting coming from above.
RenderSettings.ambientSkyColor = nil 
--*
--[Comment]
-- property: Color RenderSettings.ambientEquatorColor	get	set	
--Ambient lighting coming from the sides.
RenderSettings.ambientEquatorColor = nil 
--*
--[Comment]
-- property: Color RenderSettings.ambientGroundColor	get	set	
--Ambient lighting coming from below.
RenderSettings.ambientGroundColor = nil 
--*
--[Comment]
-- property: Color RenderSettings.ambientLight	get	set	
--Flat ambient lighting color.
RenderSettings.ambientLight = nil 
--*
--[Comment]
-- property: Single RenderSettings.ambientIntensity	get	set	
--How much the light from the Ambient Source affects the scene.
RenderSettings.ambientIntensity = nil 
--*
--[Comment]
-- property: SphericalHarmonicsL2 RenderSettings.ambientProbe	get	set	
--Custom or skybox ambient lighting data.
RenderSettings.ambientProbe = nil 
--*
--[Comment]
-- property: Single RenderSettings.reflectionIntensity	get	set	
--How much the skybox / custom cubemap reflection affects the scene.
RenderSettings.reflectionIntensity = nil 
--*
--[Comment]
-- property: Int32 RenderSettings.reflectionBounces	get	set	
--The number of times a reflection includes other reflections.
RenderSettings.reflectionBounces = nil 
--*
--[Comment]
-- property: Single RenderSettings.haloStrength	get	set	
--Size of the Light halos.
RenderSettings.haloStrength = nil 
--*
--[Comment]
-- property: Single RenderSettings.flareStrength	get	set	
--The intensity of all flares in the scene.
RenderSettings.flareStrength = nil 
--*
--[Comment]
-- property: Single RenderSettings.flareFadeSpeed	get	set	
--The fade speed of all flares in the scene.
RenderSettings.flareFadeSpeed = nil 
--*
--[Comment]
-- property: Material RenderSettings.skybox	get	set	
--The global skybox to use.
RenderSettings.skybox = nil 
--*
--[Comment]
-- property: Light RenderSettings.sun	get	set	
--The light used by the procedural skybox.
RenderSettings.sun = nil 
--*
--[Comment]
-- property: DefaultReflectionMode RenderSettings.defaultReflectionMode	get	set	
--Default reflection mode.
RenderSettings.defaultReflectionMode = nil 
--*
--[Comment]
-- property: Int32 RenderSettings.defaultReflectionResolution	get	set	
--Cubemap resolution for default reflection.
RenderSettings.defaultReflectionResolution = nil 
--*
--[Comment]
-- property: Cubemap RenderSettings.customReflection	get	set	
--Custom specular reflection cubemap.
RenderSettings.customReflection = nil 
--*
--[Comment]
-- property: String RenderSettings.name	get	set	
--The name of the object.
RenderSettings.name = nil 
--*
--[Comment]
-- property: HideFlags RenderSettings.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
RenderSettings.hideFlags = nil 
--*
BlendWeights = {} 

BlendWeights.OneBone = nil;

BlendWeights.TwoBones = nil;

BlendWeights.FourBones = nil;

RenderTexture = {} 
--*
--[Comment]
--consturctor for RenderTexture overrides:
--*
--RenderTexture.New(Int32 width,Int32 height,Int32 depth,RenderTextureFormat format,RenderTextureReadWrite readWrite)
--Creates a new RenderTexture object.
--params:
--width:    Texture width in pixels.
--height:    Texture height in pixels.
--depth:    Number of bits in depth buffer (0, 16 or 24). Note that only 24 bit depth has stencil buffer.
--format:    Texture color format.
--readWrite:    How or if color space conversions should be done on texture read/write.

--*

--RenderTexture.New(Int32 width,Int32 height,Int32 depth,RenderTextureFormat format)
--Creates a new RenderTexture object.
--params:
--width:    Texture width in pixels.
--height:    Texture height in pixels.
--depth:    Number of bits in depth buffer (0, 16 or 24). Note that only 24 bit depth has stencil buffer.
--format:    Texture color format.
--readWrite:    How or if color space conversions should be done on texture read/write.

--*

--RenderTexture.New(Int32 width,Int32 height,Int32 depth)
--Creates a new RenderTexture object.
--params:
--width:    Texture width in pixels.
--height:    Texture height in pixels.
--depth:    Number of bits in depth buffer (0, 16 or 24). Note that only 24 bit depth has stencil buffer.
--format:    Texture color format.
--readWrite:    How or if color space conversions should be done on texture read/write.

--*

function RenderTexture.New() end
--*
--[Comment]
-- property: Int32 RenderTexture.width	get	set	
--The width of the render texture in pixels.
RenderTexture.width = nil 
--*
--[Comment]
-- property: Int32 RenderTexture.height	get	set	
--The height of the render texture in pixels.
RenderTexture.height = nil 
--*
--[Comment]
-- property: Int32 RenderTexture.depth	get	set	
--The precision of the render texture's depth buffer in bits (0, 16, 24/32 are supported).
RenderTexture.depth = nil 
--*
--[Comment]
-- property: Boolean RenderTexture.isPowerOfTwo	get	set	
RenderTexture.isPowerOfTwo = nil 
--*
--[Comment]
-- property: Boolean RenderTexture.sRGB	get	
--Does this render texture use sRGB read/write conversions (Read Only).
RenderTexture.sRGB = nil 
--*
--[Comment]
-- property: RenderTextureFormat RenderTexture.format	get	set	
--The color format of the render texture.
RenderTexture.format = nil 
--*
--[Comment]
-- property: Boolean RenderTexture.useMipMap	get	set	
--Render texture has mipmaps when this flag is set.
RenderTexture.useMipMap = nil 
--*
--[Comment]
-- property: Boolean RenderTexture.autoGenerateMips	get	set	
--Mipmap levels are generated automatically when this flag is set.
RenderTexture.autoGenerateMips = nil 
--*
--[Comment]
-- property: TextureDimension RenderTexture.dimension	get	set	
--Dimensionality (type) of the render texture.
RenderTexture.dimension = nil 
--*
--[Comment]
-- property: Int32 RenderTexture.volumeDepth	get	set	
--Volume extent of a 3D render texture.
RenderTexture.volumeDepth = nil 
--*
--[Comment]
-- property: Int32 RenderTexture.antiAliasing	get	set	
--The antialiasing level for the RenderTexture.
RenderTexture.antiAliasing = nil 
--*
--[Comment]
-- property: Boolean RenderTexture.enableRandomWrite	get	set	
--Enable random access write into this render texture on Shader Model 5.0 level shaders.
RenderTexture.enableRandomWrite = nil 
--*
--[Comment]
-- property: RenderBuffer RenderTexture.colorBuffer	get	
--Color buffer of the render texture (Read Only).
RenderTexture.colorBuffer = nil 
--*
--[Comment]
-- property: RenderBuffer RenderTexture.depthBuffer	get	
--Depth/stencil buffer of the render texture (Read Only).
RenderTexture.depthBuffer = nil 
--*
--[Comment]
-- property: RenderTexture RenderTexture.active	get	set	
--Currently active render texture.
RenderTexture.active = nil 
--*
--[Comment]
-- property: FilterMode RenderTexture.filterMode	get	set	
--Filtering mode of the texture.
RenderTexture.filterMode = nil 
--*
--[Comment]
-- property: Int32 RenderTexture.anisoLevel	get	set	
--Anisotropic filtering level of the texture.
RenderTexture.anisoLevel = nil 
--*
--[Comment]
-- property: TextureWrapMode RenderTexture.wrapMode	get	set	
--Wrap mode (Repeat or Clamp) of the texture.
RenderTexture.wrapMode = nil 
--*
--[Comment]
-- property: Single RenderTexture.mipMapBias	get	set	
--Mip map bias of the texture.
RenderTexture.mipMapBias = nil 
--*
--[Comment]
-- property: Vector2 RenderTexture.texelSize	get	
RenderTexture.texelSize = nil 
--*
--[Comment]
-- property: String RenderTexture.name	get	set	
--The name of the object.
RenderTexture.name = nil 
--*
--[Comment]
-- property: HideFlags RenderTexture.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
RenderTexture.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--RenderTexture GetTemporary(Int32 width,Int32 height,Int32 depthBuffer,RenderTextureFormat format,RenderTextureReadWrite readWrite,Int32 antiAliasing)
--Allocate a temporary render texture.
--params:
--width:    Width in pixels.
--height:    Height in pixels.
--depthBuffer:    Depth buffer bits (0, 16 or 24). Note that only 24 bit depth has stencil buffer.
--format:    Render texture format.
--readWrite:    Color space conversion mode.
--antiAliasing:    Anti-aliasing (1,2,4,8).

--*
--RenderTexture GetTemporary(Int32 width,Int32 height,Int32 depthBuffer,RenderTextureFormat format,RenderTextureReadWrite readWrite)
--*
--RenderTexture GetTemporary(Int32 width,Int32 height,Int32 depthBuffer,RenderTextureFormat format)
--*
--RenderTexture GetTemporary(Int32 width,Int32 height,Int32 depthBuffer)
--*
--RenderTexture GetTemporary(Int32 width,Int32 height)
--*
--static method,use '.'
function RenderTexture.GetTemporary() end 

--[Comment]
--overrides:
--*
--Void ReleaseTemporary(RenderTexture temp)
--Release a temporary texture allocated with GetTemporary.
--*
--static method,use '.'
function RenderTexture.ReleaseTemporary() end 

--[Comment]
--overrides:
--*
--Boolean Create()
--Actually creates the RenderTexture.
--*
--no static method,use ':'
function RenderTexture:Create() end 

--[Comment]
--overrides:
--*
--Void Release()
--Releases the RenderTexture.
--*
--no static method,use ':'
function RenderTexture:Release() end 

--[Comment]
--overrides:
--*
--Boolean IsCreated()
--Is the render texture actually created?
--*
--no static method,use ':'
function RenderTexture:IsCreated() end 

--[Comment]
--overrides:
--*
--Void DiscardContents()
--Discards the contents of the RenderTexture.
--params:
--discardColor:    Should the colour buffer be discarded?
--discardDepth:    Should the depth buffer be discarded?

--*
--Void DiscardContents(Boolean discardColor,Boolean discardDepth)
--Discards the contents of the RenderTexture.
--params:
--discardColor:    Should the colour buffer be discarded?
--discardDepth:    Should the depth buffer be discarded?

--*
--no static method,use ':'
function RenderTexture:DiscardContents() end 

--[Comment]
--overrides:
--*
--Void MarkRestoreExpected()
--Indicate that there's a RenderTexture restore operation expected.
--*
--no static method,use ':'
function RenderTexture:MarkRestoreExpected() end 

--[Comment]
--overrides:
--*
--Void GenerateMips()
--Generate mipmap levels of a render texture.
--*
--no static method,use ':'
function RenderTexture:GenerateMips() end 

--[Comment]
--overrides:
--*
--IntPtr GetNativeDepthBufferPtr()
--Retrieve a native (underlying graphics API) pointer to the depth buffer resource.
--*
--no static method,use ':'
function RenderTexture:GetNativeDepthBufferPtr() end 

--[Comment]
--overrides:
--*
--Void SetGlobalShaderProperty(String propertyName)
--Assigns this RenderTexture as a global shader property named propertyName.
--*
--no static method,use ':'
function RenderTexture:SetGlobalShaderProperty() end 

--[Comment]
--overrides:
--*
--Boolean SupportsStencil(RenderTexture rt)
--Does a RenderTexture have stencil buffer?
--params:
--rt:    Render texture, or null for main screen.

--*
--static method,use '.'
function RenderTexture.SupportsStencil() end 

Resources = {} 
--*
--[Comment]
--consturctor for Resources overrides:
--*
--Resources.New()
--*

function Resources.New() end
--*
--[Comment]
--overrides:
--*
--Object[] FindObjectsOfTypeAll(Type type)
--Returns a list of all objects of Type type.
--params:
--type:    Type of the class to match while searching.

--*
--static method,use '.'
function Resources.FindObjectsOfTypeAll() end 

--[Comment]
--overrides:
--*
--Object Load(String path)
--Loads an asset stored at path in a Resources folder.
--params:
--path:    Pathname of the target folder. When using the empty string (i.e., ""), the function will load the entire contents of the Resources folder.
--systemTypeInstance:    Type filter for objects returned.

--*
--Object Load(String path,Type systemTypeInstance)
--Loads an asset stored at path in a Resources folder.
--params:
--path:    Pathname of the target folder. When using the empty string (i.e., ""), the function will load the entire contents of the Resources folder.
--systemTypeInstance:    Type filter for objects returned.

--*
--static method,use '.'
function Resources.Load() end 

--[Comment]
--overrides:
--*
--ResourceRequest LoadAsync(String path)
--Asynchronously loads an asset stored at path in a Resources folder.
--params:
--path:    Pathname of the target folder. When using the empty string (i.e., ""), the function will load the entire contents of the Resources folder.
--systemTypeInstance:    Type filter for objects returned.

--*
--ResourceRequest LoadAsync(String path,Type type)
--Asynchronously loads an asset stored at path in a Resources folder.
--params:
--path:    Pathname of the target folder. When using the empty string (i.e., ""), the function will load the entire contents of the Resources folder.
--systemTypeInstance:    Type filter for objects returned.

--*
--static method,use '.'
function Resources.LoadAsync() end 

--[Comment]
--overrides:
--*
--Object[] LoadAll(String path,Type systemTypeInstance)
--Loads all assets in a folder or file at path in a Resources folder.
--params:
--path:    Pathname of the target folder. When using the empty string (i.e., ""), the function will load the entire contents of the Resources folder.
--systemTypeInstance:    Type filter for objects returned.

--*
--Object[] LoadAll(String path)
--Loads all assets in a folder or file at path in a Resources folder.
--params:
--path:    Pathname of the target folder. When using the empty string (i.e., ""), the function will load the entire contents of the Resources folder.
--systemTypeInstance:    Type filter for objects returned.

--*
--static method,use '.'
function Resources.LoadAll() end 

--[Comment]
--overrides:
--*
--Object GetBuiltinResource(Type type,String path)
--*
--static method,use '.'
function Resources.GetBuiltinResource() end 

--[Comment]
--overrides:
--*
--Void UnloadAsset(Object assetToUnload)
--Unloads assetToUnload from memory.
--*
--static method,use '.'
function Resources.UnloadAsset() end 

--[Comment]
--overrides:
--*
--AsyncOperation UnloadUnusedAssets()
--Unloads assets that are not used.
--*
--static method,use '.'
function Resources.UnloadUnusedAssets() end 

Canvas = {} 
--*
--[Comment]
--consturctor for Canvas overrides:
--*
--Canvas.New()
--*

function Canvas.New() end
--*
--[Comment]
-- property: RenderMode Canvas.renderMode	get	set	
--Is the Canvas in World or Overlay mode?
Canvas.renderMode = nil 
--*
--[Comment]
-- property: Boolean Canvas.isRootCanvas	get	
--Is this the root Canvas?
Canvas.isRootCanvas = nil 
--*
--[Comment]
-- property: Camera Canvas.worldCamera	get	set	
--Camera used for sizing the Canvas when in Screen Space - Camera. Also used as the Camera that events will be sent through for a World Space {{Canvas].
Canvas.worldCamera = nil 
--*
--[Comment]
-- property: Rect Canvas.pixelRect	get	
--Get the render rect for the Canvas.
Canvas.pixelRect = nil 
--*
--[Comment]
-- property: Single Canvas.scaleFactor	get	set	
--Used to scale the entire canvas, while still making it fit the screen. Only applies with renderMode is Screen Space.
Canvas.scaleFactor = nil 
--*
--[Comment]
-- property: Single Canvas.referencePixelsPerUnit	get	set	
--The number of pixels per unit that is considered the default.
Canvas.referencePixelsPerUnit = nil 
--*
--[Comment]
-- property: Boolean Canvas.overridePixelPerfect	get	set	
--Allows for nested canvases to override pixelPerfect settings inherited from parent canvases.
Canvas.overridePixelPerfect = nil 
--*
--[Comment]
-- property: Boolean Canvas.pixelPerfect	get	set	
--Force elements in the canvas to be aligned with pixels. Only applies with renderMode is Screen Space.
Canvas.pixelPerfect = nil 
--*
--[Comment]
-- property: Single Canvas.planeDistance	get	set	
--How far away from the camera is the Canvas generated.
Canvas.planeDistance = nil 
--*
--[Comment]
-- property: Int32 Canvas.renderOrder	get	
--The render order in which the canvas is being emitted to the scene.
Canvas.renderOrder = nil 
--*
--[Comment]
-- property: Boolean Canvas.overrideSorting	get	set	
--Override the sorting of canvas.
Canvas.overrideSorting = nil 
--*
--[Comment]
-- property: Int32 Canvas.sortingOrder	get	set	
--Canvas' order within a sorting layer.
Canvas.sortingOrder = nil 
--*
--[Comment]
-- property: Int32 Canvas.targetDisplay	get	set	
--For Overlay mode, display index on which the UI canvas will appear.
Canvas.targetDisplay = nil 
--*
--[Comment]
-- property: Single Canvas.normalizedSortingGridSize	get	set	
--The normalized grid size that the canvas will split the renderable area into.
Canvas.normalizedSortingGridSize = nil 
--*
--[Comment]
-- property: Int32 Canvas.sortingLayerID	get	set	
--Unique ID of the Canvas' sorting layer.
Canvas.sortingLayerID = nil 
--*
--[Comment]
-- property: Int32 Canvas.cachedSortingLayerValue	get	
--Cached calculated value based upon SortingLayerID.
Canvas.cachedSortingLayerValue = nil 
--*
--[Comment]
-- property: String Canvas.sortingLayerName	get	set	
--Name of the Canvas' sorting layer.
Canvas.sortingLayerName = nil 
--*
--[Comment]
-- property: Canvas Canvas.rootCanvas	get	
--Returns the Canvas closest to root, by checking through each parent and returning the last canvas found. If no other canvas is found then the canvas will return itself.
Canvas.rootCanvas = nil 
--*
--[Comment]
-- property: Boolean Canvas.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
Canvas.enabled = nil 
--*
--[Comment]
-- property: Boolean Canvas.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
Canvas.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform Canvas.transform	get	
--The Transform attached to this GameObject.
Canvas.transform = nil 
--*
--[Comment]
-- property: GameObject Canvas.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
Canvas.gameObject = nil 
--*
--[Comment]
-- property: String Canvas.tag	get	set	
--The tag of this game object.
Canvas.tag = nil 
--*
--[Comment]
-- property: String Canvas.name	get	set	
--The name of the object.
Canvas.name = nil 
--*
--[Comment]
-- property: HideFlags Canvas.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Canvas.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Material GetDefaultCanvasMaterial()
--Returns the default material that can be used for rendering normal elements on the Canvas.
--*
--static method,use '.'
function Canvas.GetDefaultCanvasMaterial() end 

--[Comment]
--overrides:
--*
--Material GetETC1SupportedCanvasMaterial()
--Gets or generates the ETC1 Material.
--*
--static method,use '.'
function Canvas.GetETC1SupportedCanvasMaterial() end 

--[Comment]
--overrides:
--*
--Void add_willRenderCanvases(WillRenderCanvases value)
--*
--static method,use '.'
function Canvas.add_willRenderCanvases() end 

--[Comment]
--overrides:
--*
--Void remove_willRenderCanvases(WillRenderCanvases value)
--*
--static method,use '.'
function Canvas.remove_willRenderCanvases() end 

--[Comment]
--overrides:
--*
--Void ForceUpdateCanvases()
--Force all canvases to update their content.
--*
--static method,use '.'
function Canvas.ForceUpdateCanvases() end 

RenderMode = {} 

RenderMode.ScreenSpaceOverlay = nil;

RenderMode.ScreenSpaceCamera = nil;

RenderMode.WorldSpace = nil;

EventSystem = {} 
--*
--[Comment]
-- property: EventSystem EventSystem.current	get	set	
--Return the current EventSystem.
EventSystem.current = nil 
--*
--[Comment]
-- property: Boolean EventSystem.sendNavigationEvents	get	set	
--Should the EventSystem allow navigation events (move  submit  cancel).
EventSystem.sendNavigationEvents = nil 
--*
--[Comment]
-- property: Int32 EventSystem.pixelDragThreshold	get	set	
--The soft area for dragging in pixels.
EventSystem.pixelDragThreshold = nil 
--*
--[Comment]
-- property: BaseInputModule EventSystem.currentInputModule	get	
--The currently active EventSystems.BaseInputModule.
EventSystem.currentInputModule = nil 
--*
--[Comment]
-- property: GameObject EventSystem.firstSelectedGameObject	get	set	
--The GameObject that was selected first.
EventSystem.firstSelectedGameObject = nil 
--*
--[Comment]
-- property: GameObject EventSystem.currentSelectedGameObject	get	
--The GameObject currently considered active by the EventSystem.
EventSystem.currentSelectedGameObject = nil 
--*
--[Comment]
-- property: Boolean EventSystem.alreadySelecting	get	
--Returns true if the EventSystem is already in a SetSelectedGameObject.
EventSystem.alreadySelecting = nil 
--*
--[Comment]
-- property: Boolean EventSystem.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
EventSystem.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean EventSystem.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
EventSystem.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean EventSystem.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
EventSystem.enabled = nil 
--*
--[Comment]
-- property: Boolean EventSystem.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
EventSystem.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform EventSystem.transform	get	
--The Transform attached to this GameObject.
EventSystem.transform = nil 
--*
--[Comment]
-- property: GameObject EventSystem.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
EventSystem.gameObject = nil 
--*
--[Comment]
-- property: String EventSystem.tag	get	set	
--The tag of this game object.
EventSystem.tag = nil 
--*
--[Comment]
-- property: String EventSystem.name	get	set	
--The name of the object.
EventSystem.name = nil 
--*
--[Comment]
-- property: HideFlags EventSystem.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
EventSystem.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void UpdateModules()
--Recalculate the internal list of BaseInputModules.
--*
--no static method,use ':'
function EventSystem:UpdateModules() end 

--[Comment]
--overrides:
--*
--Void SetSelectedGameObject(GameObject selected,BaseEventData pointer)
--Set the object as selected. Will send an OnDeselect the the old selected object and OnSelect to the new selected object.
--params:
--selected:    GameObject to select.
--pointer:    Associated EventData.

--*
--Void SetSelectedGameObject(GameObject selected)
--*
--no static method,use ':'
function EventSystem:SetSelectedGameObject() end 

--[Comment]
--overrides:
--*
--Void RaycastAll(PointerEventData eventData,List`1 raycastResults)
--*
--no static method,use ':'
function EventSystem:RaycastAll() end 

--[Comment]
--overrides:
--*
--Boolean IsPointerOverGameObject()
--Is the pointer with the given ID over an EventSystem object?
--params:
--pointerId:    Pointer (touch / mouse) ID.

--*
--Boolean IsPointerOverGameObject(Int32 pointerId)
--Is the pointer with the given ID over an EventSystem object?
--params:
--pointerId:    Pointer (touch / mouse) ID.

--*
--no static method,use ':'
function EventSystem:IsPointerOverGameObject() end 

--[Comment]
--overrides:
--*
--String ToString()
--*
--no static method,use ':'
function EventSystem:ToString() end 

GUILayer = {} 
--*
--[Comment]
--consturctor for GUILayer overrides:
--*
--GUILayer.New()
--*

function GUILayer.New() end
--*
--[Comment]
-- property: Boolean GUILayer.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
GUILayer.enabled = nil 
--*
--[Comment]
-- property: Boolean GUILayer.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
GUILayer.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform GUILayer.transform	get	
--The Transform attached to this GameObject.
GUILayer.transform = nil 
--*
--[Comment]
-- property: GameObject GUILayer.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
GUILayer.gameObject = nil 
--*
--[Comment]
-- property: String GUILayer.tag	get	set	
--The tag of this game object.
GUILayer.tag = nil 
--*
--[Comment]
-- property: String GUILayer.name	get	set	
--The name of the object.
GUILayer.name = nil 
--*
--[Comment]
-- property: HideFlags GUILayer.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
GUILayer.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--GUIElement HitTest(Vector3 screenPosition)
--Get the GUI element at a specific screen position.
--*
--no static method,use ':'
function GUILayer:HitTest() end 

CanvasScaler = {} 
--*
--[Comment]
-- property: ScaleMode CanvasScaler.uiScaleMode	get	set	
--Determines how UI elements in the Canvas are scaled.
CanvasScaler.uiScaleMode = nil 
--*
--[Comment]
-- property: Single CanvasScaler.referencePixelsPerUnit	get	set	
--If a sprite has this 'Pixels Per Unit' setting, then one pixel in the sprite will cover one unit in the UI.
CanvasScaler.referencePixelsPerUnit = nil 
--*
--[Comment]
-- property: Single CanvasScaler.scaleFactor	get	set	
--Scales all UI elements in the Canvas by this factor.
CanvasScaler.scaleFactor = nil 
--*
--[Comment]
-- property: Vector2 CanvasScaler.referenceResolution	get	set	
--The resolution the UI layout is designed for.
CanvasScaler.referenceResolution = nil 
--*
--[Comment]
-- property: ScreenMatchMode CanvasScaler.screenMatchMode	get	set	
--A mode used to scale the canvas area if the aspect ratio of the current resolution doesn't fit the reference resolution.
CanvasScaler.screenMatchMode = nil 
--*
--[Comment]
-- property: Single CanvasScaler.matchWidthOrHeight	get	set	
--Setting to scale the Canvas to match the width or height of the reference resolution, or a combination.
CanvasScaler.matchWidthOrHeight = nil 
--*
--[Comment]
-- property: Unit CanvasScaler.physicalUnit	get	set	
--The physical unit to specify positions and sizes in.
CanvasScaler.physicalUnit = nil 
--*
--[Comment]
-- property: Single CanvasScaler.fallbackScreenDPI	get	set	
--The DPI to assume if the screen DPI is not known.
CanvasScaler.fallbackScreenDPI = nil 
--*
--[Comment]
-- property: Single CanvasScaler.defaultSpriteDPI	get	set	
--The pixels per inch to use for sprites that have a 'Pixels Per Unit' setting that matches the 'Reference Pixels Per Unit' setting.
CanvasScaler.defaultSpriteDPI = nil 
--*
--[Comment]
-- property: Single CanvasScaler.dynamicPixelsPerUnit	get	set	
--The amount of pixels per unit to use for dynamically created bitmaps in the UI, such as Text.
CanvasScaler.dynamicPixelsPerUnit = nil 
--*
--[Comment]
-- property: Boolean CanvasScaler.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
CanvasScaler.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean CanvasScaler.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
CanvasScaler.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean CanvasScaler.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
CanvasScaler.enabled = nil 
--*
--[Comment]
-- property: Boolean CanvasScaler.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
CanvasScaler.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform CanvasScaler.transform	get	
--The Transform attached to this GameObject.
CanvasScaler.transform = nil 
--*
--[Comment]
-- property: GameObject CanvasScaler.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
CanvasScaler.gameObject = nil 
--*
--[Comment]
-- property: String CanvasScaler.tag	get	set	
--The tag of this game object.
CanvasScaler.tag = nil 
--*
--[Comment]
-- property: String CanvasScaler.name	get	set	
--The name of the object.
CanvasScaler.name = nil 
--*
--[Comment]
-- property: HideFlags CanvasScaler.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
CanvasScaler.hideFlags = nil 
--*
StandaloneInputModule = {} 
--*
--[Comment]
-- property: Boolean StandaloneInputModule.forceModuleActive	get	set	
--Force this module to be active.
StandaloneInputModule.forceModuleActive = nil 
--*
--[Comment]
-- property: Single StandaloneInputModule.inputActionsPerSecond	get	set	
--Number of keyboard / controller inputs allowed per second.
StandaloneInputModule.inputActionsPerSecond = nil 
--*
--[Comment]
-- property: Single StandaloneInputModule.repeatDelay	get	set	
--Delay in seconds before the input actions per second repeat rate takes effect.
StandaloneInputModule.repeatDelay = nil 
--*
--[Comment]
-- property: String StandaloneInputModule.horizontalAxis	get	set	
--Input manager name for the horizontal axis button.
StandaloneInputModule.horizontalAxis = nil 
--*
--[Comment]
-- property: String StandaloneInputModule.verticalAxis	get	set	
--Input manager name for the vertical axis.
StandaloneInputModule.verticalAxis = nil 
--*
--[Comment]
-- property: String StandaloneInputModule.submitButton	get	set	
--Maximum number of input events handled per second.
StandaloneInputModule.submitButton = nil 
--*
--[Comment]
-- property: String StandaloneInputModule.cancelButton	get	set	
--Input manager name for the 'cancel' button.
StandaloneInputModule.cancelButton = nil 
--*
--[Comment]
-- property: BaseInput StandaloneInputModule.input	get	
--The current BaseInput being used by the input module.
StandaloneInputModule.input = nil 
--*
--[Comment]
-- property: Boolean StandaloneInputModule.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
StandaloneInputModule.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean StandaloneInputModule.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
StandaloneInputModule.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean StandaloneInputModule.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
StandaloneInputModule.enabled = nil 
--*
--[Comment]
-- property: Boolean StandaloneInputModule.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
StandaloneInputModule.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform StandaloneInputModule.transform	get	
--The Transform attached to this GameObject.
StandaloneInputModule.transform = nil 
--*
--[Comment]
-- property: GameObject StandaloneInputModule.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
StandaloneInputModule.gameObject = nil 
--*
--[Comment]
-- property: String StandaloneInputModule.tag	get	set	
--The tag of this game object.
StandaloneInputModule.tag = nil 
--*
--[Comment]
-- property: String StandaloneInputModule.name	get	set	
--The name of the object.
StandaloneInputModule.name = nil 
--*
--[Comment]
-- property: HideFlags StandaloneInputModule.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
StandaloneInputModule.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void UpdateModule()
--See BaseInputModule.
--*
--no static method,use ':'
function StandaloneInputModule:UpdateModule() end 

--[Comment]
--overrides:
--*
--Boolean IsModuleSupported()
--See BaseInputModule.
--*
--no static method,use ':'
function StandaloneInputModule:IsModuleSupported() end 

--[Comment]
--overrides:
--*
--Boolean ShouldActivateModule()
--See BaseInputModule.
--*
--no static method,use ':'
function StandaloneInputModule:ShouldActivateModule() end 

--[Comment]
--overrides:
--*
--Void ActivateModule()
--See BaseInputModule.
--*
--no static method,use ':'
function StandaloneInputModule:ActivateModule() end 

--[Comment]
--overrides:
--*
--Void DeactivateModule()
--See BaseInputModule.
--*
--no static method,use ':'
function StandaloneInputModule:DeactivateModule() end 

--[Comment]
--overrides:
--*
--Void Process()
--See BaseInputModule.
--*
--no static method,use ':'
function StandaloneInputModule:Process() end 

GraphicRaycaster = {} 
--*
--[Comment]
-- property: Int32 GraphicRaycaster.sortOrderPriority	get	
GraphicRaycaster.sortOrderPriority = nil 
--*
--[Comment]
-- property: Int32 GraphicRaycaster.renderOrderPriority	get	
GraphicRaycaster.renderOrderPriority = nil 
--*
--[Comment]
-- property: Boolean GraphicRaycaster.ignoreReversedGraphics	get	set	
--Should graphics facing away from the raycaster be considered?
GraphicRaycaster.ignoreReversedGraphics = nil 
--*
--[Comment]
-- property: BlockingObjects GraphicRaycaster.blockingObjects	get	set	
--Type of objects that will block graphic raycasts.
GraphicRaycaster.blockingObjects = nil 
--*
--[Comment]
-- property: Camera GraphicRaycaster.eventCamera	get	
--See: BaseRaycaster.
GraphicRaycaster.eventCamera = nil 
--*
--[Comment]
-- property: Boolean GraphicRaycaster.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
GraphicRaycaster.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean GraphicRaycaster.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
GraphicRaycaster.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean GraphicRaycaster.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
GraphicRaycaster.enabled = nil 
--*
--[Comment]
-- property: Boolean GraphicRaycaster.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
GraphicRaycaster.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform GraphicRaycaster.transform	get	
--The Transform attached to this GameObject.
GraphicRaycaster.transform = nil 
--*
--[Comment]
-- property: GameObject GraphicRaycaster.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
GraphicRaycaster.gameObject = nil 
--*
--[Comment]
-- property: String GraphicRaycaster.tag	get	set	
--The tag of this game object.
GraphicRaycaster.tag = nil 
--*
--[Comment]
-- property: String GraphicRaycaster.name	get	set	
--The name of the object.
GraphicRaycaster.name = nil 
--*
--[Comment]
-- property: HideFlags GraphicRaycaster.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
GraphicRaycaster.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void Raycast(PointerEventData eventData,List`1 resultAppendList)
--*
--no static method,use ':'
function GraphicRaycaster:Raycast() end 

Edge = {} 

Edge.Left = nil;

Edge.Right = nil;

Edge.Top = nil;

Edge.Bottom = nil;

ScaleMode = {} 

ScaleMode.ConstantPixelSize = nil;

ScaleMode.ScaleWithScreenSize = nil;

ScaleMode.ConstantPhysicalSize = nil;

ScreenMatchMode = {} 

ScreenMatchMode.MatchWidthOrHeight = nil;

ScreenMatchMode.Expand = nil;

ScreenMatchMode.Shrink = nil;

RectTransform = {} 
--*
--[Comment]
--consturctor for RectTransform overrides:
--*
--RectTransform.New()
--*

function RectTransform.New() end
--*
--[Comment]
-- property: Rect RectTransform.rect	get	
--The calculated rectangle in the local space of the Transform.
RectTransform.rect = nil 
--*
--[Comment]
-- property: Vector2 RectTransform.anchorMin	get	set	
--The normalized position in the parent RectTransform that the lower left corner is anchored to.
RectTransform.anchorMin = nil 
--*
--[Comment]
-- property: Vector2 RectTransform.anchorMax	get	set	
--The normalized position in the parent RectTransform that the upper right corner is anchored to.
RectTransform.anchorMax = nil 
--*
--[Comment]
-- property: Vector3 RectTransform.anchoredPosition3D	get	set	
--The 3D position of the pivot of this RectTransform relative to the anchor reference point.
RectTransform.anchoredPosition3D = nil 
--*
--[Comment]
-- property: Vector2 RectTransform.anchoredPosition	get	set	
--The position of the pivot of this RectTransform relative to the anchor reference point.
RectTransform.anchoredPosition = nil 
--*
--[Comment]
-- property: Vector2 RectTransform.sizeDelta	get	set	
--The size of this RectTransform relative to the distances between the anchors.
RectTransform.sizeDelta = nil 
--*
--[Comment]
-- property: Vector2 RectTransform.pivot	get	set	
--The normalized position in this RectTransform that it rotates around.
RectTransform.pivot = nil 
--*
--[Comment]
-- property: Vector2 RectTransform.offsetMin	get	set	
--The offset of the lower left corner of the rectangle relative to the lower left anchor.
RectTransform.offsetMin = nil 
--*
--[Comment]
-- property: Vector2 RectTransform.offsetMax	get	set	
--The offset of the upper right corner of the rectangle relative to the upper right anchor.
RectTransform.offsetMax = nil 
--*
--[Comment]
-- property: Vector3 RectTransform.position	get	set	
--The position of the transform in world space.
RectTransform.position = nil 
--*
--[Comment]
-- property: Vector3 RectTransform.localPosition	get	set	
--Position of the transform relative to the parent transform.
RectTransform.localPosition = nil 
--*
--[Comment]
-- property: Vector3 RectTransform.eulerAngles	get	set	
--The rotation as Euler angles in degrees.
RectTransform.eulerAngles = nil 
--*
--[Comment]
-- property: Vector3 RectTransform.localEulerAngles	get	set	
--The rotation as Euler angles in degrees relative to the parent transform's rotation.
RectTransform.localEulerAngles = nil 
--*
--[Comment]
-- property: Vector3 RectTransform.right	get	set	
--The red axis of the transform in world space.
RectTransform.right = nil 
--*
--[Comment]
-- property: Vector3 RectTransform.up	get	set	
--The green axis of the transform in world space.
RectTransform.up = nil 
--*
--[Comment]
-- property: Vector3 RectTransform.forward	get	set	
--The blue axis of the transform in world space.
RectTransform.forward = nil 
--*
--[Comment]
-- property: Quaternion RectTransform.rotation	get	set	
--The rotation of the transform in world space stored as a Quaternion.
RectTransform.rotation = nil 
--*
--[Comment]
-- property: Quaternion RectTransform.localRotation	get	set	
--The rotation of the transform relative to the parent transform's rotation.
RectTransform.localRotation = nil 
--*
--[Comment]
-- property: Vector3 RectTransform.localScale	get	set	
--The scale of the transform relative to the parent.
RectTransform.localScale = nil 
--*
--[Comment]
-- property: Transform RectTransform.parent	get	set	
--The parent of the transform.
RectTransform.parent = nil 
--*
--[Comment]
-- property: Matrix4x4 RectTransform.worldToLocalMatrix	get	
--Matrix that transforms a point from world space into local space (Read Only).
RectTransform.worldToLocalMatrix = nil 
--*
--[Comment]
-- property: Matrix4x4 RectTransform.localToWorldMatrix	get	
--Matrix that transforms a point from local space into world space (Read Only).
RectTransform.localToWorldMatrix = nil 
--*
--[Comment]
-- property: Transform RectTransform.root	get	
--Returns the topmost transform in the hierarchy.
RectTransform.root = nil 
--*
--[Comment]
-- property: Int32 RectTransform.childCount	get	
--The number of children the Transform has.
RectTransform.childCount = nil 
--*
--[Comment]
-- property: Vector3 RectTransform.lossyScale	get	
--The global scale of the object (Read Only).
RectTransform.lossyScale = nil 
--*
--[Comment]
-- property: Boolean RectTransform.hasChanged	get	set	
--Has the transform changed since the last time the flag was set to 'false'?
RectTransform.hasChanged = nil 
--*
--[Comment]
-- property: Int32 RectTransform.hierarchyCapacity	get	set	
--The transform capacity of the transform's hierarchy data structure.
RectTransform.hierarchyCapacity = nil 
--*
--[Comment]
-- property: Int32 RectTransform.hierarchyCount	get	
--The number of transforms in the transform's hierarchy data structure.
RectTransform.hierarchyCount = nil 
--*
--[Comment]
-- property: Transform RectTransform.transform	get	
--The Transform attached to this GameObject.
RectTransform.transform = nil 
--*
--[Comment]
-- property: GameObject RectTransform.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
RectTransform.gameObject = nil 
--*
--[Comment]
-- property: String RectTransform.tag	get	set	
--The tag of this game object.
RectTransform.tag = nil 
--*
--[Comment]
-- property: String RectTransform.name	get	set	
--The name of the object.
RectTransform.name = nil 
--*
--[Comment]
-- property: HideFlags RectTransform.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
RectTransform.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void add_reapplyDrivenProperties(ReapplyDrivenProperties value)
--*
--static method,use '.'
function RectTransform.add_reapplyDrivenProperties() end 

--[Comment]
--overrides:
--*
--Void remove_reapplyDrivenProperties(ReapplyDrivenProperties value)
--*
--static method,use '.'
function RectTransform.remove_reapplyDrivenProperties() end 

--[Comment]
--overrides:
--*
--Void GetLocalCorners(Vector3[] fourCornersArray)
--Get the corners of the calculated rectangle in the local space of its Transform.
--params:
--fourCornersArray:    Array that corners should be filled into.

--*
--no static method,use ':'
function RectTransform:GetLocalCorners() end 

--[Comment]
--overrides:
--*
--Void GetWorldCorners(Vector3[] fourCornersArray)
--Get the corners of the calculated rectangle in world space.
--params:
--fourCornersArray:    Array that corners should be filled into.

--*
--no static method,use ':'
function RectTransform:GetWorldCorners() end 

--[Comment]
--overrides:
--*
--Void SetInsetAndSizeFromParentEdge(Edge edge,Single inset,Single size)
--*
--no static method,use ':'
function RectTransform:SetInsetAndSizeFromParentEdge() end 

--[Comment]
--overrides:
--*
--Void SetSizeWithCurrentAnchors(Axis axis,Single size)
--*
--no static method,use ':'
function RectTransform:SetSizeWithCurrentAnchors() end 

Text = {} 
--*
--[Comment]
-- property: TextGenerator Text.cachedTextGenerator	get	
--The cached TextGenerator used when generating visible Text.
Text.cachedTextGenerator = nil 
--*
--[Comment]
-- property: TextGenerator Text.cachedTextGeneratorForLayout	get	
--The cached TextGenerator used when determine Layout.
Text.cachedTextGeneratorForLayout = nil 
--*
--[Comment]
-- property: Texture Text.mainTexture	get	
--The Texture that comes from the Font.
Text.mainTexture = nil 
--*
--[Comment]
-- property: Font Text.font	get	set	
--The Font used by the text.
Text.font = nil 
--*
--[Comment]
-- property: String Text.text	get	set	
--The string value this text will display.
Text.text = nil 
--*
--[Comment]
-- property: Boolean Text.supportRichText	get	set	
--Whether this Text will support rich text.
Text.supportRichText = nil 
--*
--[Comment]
-- property: Boolean Text.resizeTextForBestFit	get	set	
--Should the text be allowed to auto resized.
Text.resizeTextForBestFit = nil 
--*
--[Comment]
-- property: Int32 Text.resizeTextMinSize	get	set	
--The minimum size the text is allowed to be.
Text.resizeTextMinSize = nil 
--*
--[Comment]
-- property: Int32 Text.resizeTextMaxSize	get	set	
--The maximum size the text is allowed to be. 1 = infinitly large.
Text.resizeTextMaxSize = nil 
--*
--[Comment]
-- property: TextAnchor Text.alignment	get	set	
--The positioning of the text reliative to its RectTransform.
Text.alignment = nil 
--*
--[Comment]
-- property: Boolean Text.alignByGeometry	get	set	
--Use the extents of glyph geometry to perform horizontal alignment rather than glyph metrics.
Text.alignByGeometry = nil 
--*
--[Comment]
-- property: Int32 Text.fontSize	get	set	
--The size that the Font should render at.
Text.fontSize = nil 
--*
--[Comment]
-- property: HorizontalWrapMode Text.horizontalOverflow	get	set	
--Horizontal overflow mode.
Text.horizontalOverflow = nil 
--*
--[Comment]
-- property: VerticalWrapMode Text.verticalOverflow	get	set	
--Vertical overflow mode.
Text.verticalOverflow = nil 
--*
--[Comment]
-- property: Single Text.lineSpacing	get	set	
--Line spacing, specified as a factor of font line height. A value of 1 will produce normal line spacing.
Text.lineSpacing = nil 
--*
--[Comment]
-- property: FontStyle Text.fontStyle	get	set	
--FontStyle used by the text.
Text.fontStyle = nil 
--*
--[Comment]
-- property: Single Text.pixelsPerUnit	get	
--(Read Only) Provides information about how fonts are scale to the screen.
Text.pixelsPerUnit = nil 
--*
--[Comment]
-- property: Single Text.minWidth	get	
--Called by the layout system.
Text.minWidth = nil 
--*
--[Comment]
-- property: Single Text.preferredWidth	get	
--Called by the layout system.
Text.preferredWidth = nil 
--*
--[Comment]
-- property: Single Text.flexibleWidth	get	
--Called by the layout system.
Text.flexibleWidth = nil 
--*
--[Comment]
-- property: Single Text.minHeight	get	
--Called by the layout system.
Text.minHeight = nil 
--*
--[Comment]
-- property: Single Text.preferredHeight	get	
--Called by the layout system.
Text.preferredHeight = nil 
--*
--[Comment]
-- property: Single Text.flexibleHeight	get	
--Called by the layout system.
Text.flexibleHeight = nil 
--*
--[Comment]
-- property: Int32 Text.layoutPriority	get	
--Called by the layout system.
Text.layoutPriority = nil 
--*
--[Comment]
-- property: CullStateChangedEvent Text.onCullStateChanged	get	set	
--Callback issued when culling changes.
Text.onCullStateChanged = nil 
--*
--[Comment]
-- property: Boolean Text.maskable	get	set	
--Does this graphic allow masking.
Text.maskable = nil 
--*
--[Comment]
-- property: Color Text.color	get	set	
--Base color of the Graphic.
Text.color = nil 
--*
--[Comment]
-- property: Boolean Text.raycastTarget	get	set	
--Should this graphic be considered a target for raycasting?
Text.raycastTarget = nil 
--*
--[Comment]
-- property: Int32 Text.depth	get	
--Absolute depth of the graphic in the hierarchy, used by rendering and events.
Text.depth = nil 
--*
--[Comment]
-- property: RectTransform Text.rectTransform	get	
--The RectTransform component used by the Graphic.
Text.rectTransform = nil 
--*
--[Comment]
-- property: Canvas Text.canvas	get	
--A reference to the Canvas this Graphic is rendering to.
Text.canvas = nil 
--*
--[Comment]
-- property: CanvasRenderer Text.canvasRenderer	get	
--The CanvasRenderer used by this Graphic.
Text.canvasRenderer = nil 
--*
--[Comment]
-- property: Material Text.defaultMaterial	get	
--Returns the default material for the graphic.
Text.defaultMaterial = nil 
--*
--[Comment]
-- property: Material Text.material	get	set	
--The Material set by the user.
Text.material = nil 
--*
--[Comment]
-- property: Material Text.materialForRendering	get	
--The material that will be sent for Rendering (Read only).
Text.materialForRendering = nil 
--*
--[Comment]
-- property: Boolean Text.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
Text.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean Text.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
Text.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean Text.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
Text.enabled = nil 
--*
--[Comment]
-- property: Boolean Text.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
Text.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform Text.transform	get	
--The Transform attached to this GameObject.
Text.transform = nil 
--*
--[Comment]
-- property: GameObject Text.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
Text.gameObject = nil 
--*
--[Comment]
-- property: String Text.tag	get	set	
--The tag of this game object.
Text.tag = nil 
--*
--[Comment]
-- property: String Text.name	get	set	
--The name of the object.
Text.name = nil 
--*
--[Comment]
-- property: HideFlags Text.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
Text.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void FontTextureChanged()
--Called by the [FontUpdateTracker] when the texture associated with a font is modified.
--*
--no static method,use ':'
function Text:FontTextureChanged() end 

--[Comment]
--overrides:
--*
--TextGenerationSettings GetGenerationSettings(Vector2 extents)
--Convenience function to populate the generation setting for the text.
--params:
--extents:    The extents the text can draw in.

--*
--no static method,use ':'
function Text:GetGenerationSettings() end 

--[Comment]
--overrides:
--*
--Vector2 GetTextAnchorPivot(TextAnchor anchor)
--Convenience function to determine the vector offset of the anchor.
--*
--static method,use '.'
function Text.GetTextAnchorPivot() end 

--[Comment]
--overrides:
--*
--Void CalculateLayoutInputHorizontal()
--Called by the layout system.
--*
--no static method,use ':'
function Text:CalculateLayoutInputHorizontal() end 

--[Comment]
--overrides:
--*
--Void CalculateLayoutInputVertical()
--Called by the layout system.
--*
--no static method,use ':'
function Text:CalculateLayoutInputVertical() end 

--[Comment]
--overrides:
--*
--Void OnRebuildRequested()
--*
--no static method,use ':'
function Text:OnRebuildRequested() end 

Util = {} 
--*
--[Comment]
--consturctor for Util overrides:
--*
--Util.New()
--*

function Util.New() end
--*
--[Comment]
-- property: String Util.DataPath	get	
Util.DataPath = nil 
--*
--[Comment]
-- property: Boolean Util.NetAvailable	get	
Util.NetAvailable = nil 
--*
--[Comment]
-- property: Boolean Util.IsWifi	get	
Util.IsWifi = nil 
--*
--[Comment]
--overrides:
--*
--Int32 Int(Object o)
--*
--static method,use '.'
function Util.Int() end 

--[Comment]
--overrides:
--*
--Single Float(Object o)
--*
--static method,use '.'
function Util.Float() end 

--[Comment]
--overrides:
--*
--Int64 Long(Object o)
--*
--static method,use '.'
function Util.Long() end 

--[Comment]
--overrides:
--*
--Int32 Random(Int32 min,Int32 max)
--*
--Single Random(Single min,Single max)
--*
--static method,use '.'
function Util.Random() end 

--[Comment]
--overrides:
--*
--String Uid(String uid)
--*
--static method,use '.'
function Util.Uid() end 

--[Comment]
--overrides:
--*
--Int64 GetTime()
--*
--static method,use '.'
function Util.GetTime() end 

--[Comment]
--overrides:
--*
--GameObject Child(GameObject go,String subnode)
--*
--GameObject Child(Transform go,String subnode)
--*
--static method,use '.'
function Util.Child() end 

--[Comment]
--overrides:
--*
--GameObject Peer(GameObject go,String subnode)
--*
--GameObject Peer(Transform go,String subnode)
--*
--static method,use '.'
function Util.Peer() end 

--[Comment]
--overrides:
--*
--String md5(String source)
--*
--static method,use '.'
function Util.md5() end 

--[Comment]
--overrides:
--*
--String md5file(String file)
--*
--static method,use '.'
function Util.md5file() end 

--[Comment]
--overrides:
--*
--Void ClearChild(Transform go)
--*
--static method,use '.'
function Util.ClearChild() end 

--[Comment]
--overrides:
--*
--Void ClearMemory()
--*
--static method,use '.'
function Util.ClearMemory() end 

--[Comment]
--overrides:
--*
--String GetRelativePath()
--*
--static method,use '.'
function Util.GetRelativePath() end 

--[Comment]
--overrides:
--*
--String GetFileText(String path)
--*
--static method,use '.'
function Util.GetFileText() end 

--[Comment]
--overrides:
--*
--String AppContentPath()
--*
--static method,use '.'
function Util.AppContentPath() end 

--[Comment]
--overrides:
--*
--Void Log(String str)
--*
--static method,use '.'
function Util.Log() end 

--[Comment]
--overrides:
--*
--Void LogWarning(String str)
--*
--static method,use '.'
function Util.LogWarning() end 

--[Comment]
--overrides:
--*
--Void LogError(String str)
--*
--static method,use '.'
function Util.LogError() end 

--[Comment]
--overrides:
--*
--Int32 CheckRuntimeFile()
--*
--static method,use '.'
function Util.CheckRuntimeFile() end 

--[Comment]
--overrides:
--*
--Object[] CallMethod(String module,String func,Object[] args)
--*
--static method,use '.'
function Util.CallMethod() end 

--[Comment]
--overrides:
--*
--Boolean CheckEnvironment()
--*
--static method,use '.'
function Util.CheckEnvironment() end 

AppConst = {} 
--*
--[Comment]
--consturctor for AppConst overrides:
--*
--AppConst.New()
--*

function AppConst.New() end
--*
--[Comment]
-- property: String AppConst.FrameworkRoot	get	
AppConst.FrameworkRoot = nil 
--*
LuaHelper = {} 
--*
--[Comment]
--overrides:
--*
--Type GetType(String classname)
--*
--static method,use '.'
function LuaHelper.GetType() end 

--[Comment]
--overrides:
--*
--UIManager GetUIManager()
--*
--static method,use '.'
function LuaHelper.GetUIManager() end 

--[Comment]
--overrides:
--*
--PanelManager GetPanelManager()
--*
--static method,use '.'
function LuaHelper.GetPanelManager() end 

--[Comment]
--overrides:
--*
--ResourceManager GetResManager()
--*
--static method,use '.'
function LuaHelper.GetResManager() end 

--[Comment]
--overrides:
--*
--NetworkManager GetNetManager()
--*
--static method,use '.'
function LuaHelper.GetNetManager() end 

--[Comment]
--overrides:
--*
--SoundManager GetSoundManager()
--*
--static method,use '.'
function LuaHelper.GetSoundManager() end 

--[Comment]
--overrides:
--*
--Void OnCallLuaFunc(LuaByteBuffer data,LuaFunction func)
--*
--static method,use '.'
function LuaHelper.OnCallLuaFunc() end 

--[Comment]
--overrides:
--*
--Void OnJsonCallFunc(String data,LuaFunction func)
--*
--static method,use '.'
function LuaHelper.OnJsonCallFunc() end 

ByteBuffer = {} 
--*
--[Comment]
--consturctor for ByteBuffer overrides:
--*
--ByteBuffer.New()
--*

--ByteBuffer.New(Byte[] data)
--*

function ByteBuffer.New() end
--*
--[Comment]
--overrides:
--*
--Void Close()
--*
--no static method,use ':'
function ByteBuffer:Close() end 

--[Comment]
--overrides:
--*
--Void WriteByte(Byte v)
--*
--no static method,use ':'
function ByteBuffer:WriteByte() end 

--[Comment]
--overrides:
--*
--Void WriteInt(Int32 v)
--*
--no static method,use ':'
function ByteBuffer:WriteInt() end 

--[Comment]
--overrides:
--*
--Void WriteShort(UInt16 v)
--*
--no static method,use ':'
function ByteBuffer:WriteShort() end 

--[Comment]
--overrides:
--*
--Void WriteLong(Int64 v)
--*
--no static method,use ':'
function ByteBuffer:WriteLong() end 

--[Comment]
--overrides:
--*
--Void WriteFloat(Single v)
--*
--no static method,use ':'
function ByteBuffer:WriteFloat() end 

--[Comment]
--overrides:
--*
--Void WriteDouble(Double v)
--*
--no static method,use ':'
function ByteBuffer:WriteDouble() end 

--[Comment]
--overrides:
--*
--Void WriteString(String v)
--*
--no static method,use ':'
function ByteBuffer:WriteString() end 

--[Comment]
--overrides:
--*
--Void WriteBytes(Byte[] v)
--*
--no static method,use ':'
function ByteBuffer:WriteBytes() end 

--[Comment]
--overrides:
--*
--Void WriteBuffer(LuaByteBuffer strBuffer)
--*
--no static method,use ':'
function ByteBuffer:WriteBuffer() end 

--[Comment]
--overrides:
--*
--Byte ReadByte()
--*
--no static method,use ':'
function ByteBuffer:ReadByte() end 

--[Comment]
--overrides:
--*
--Int32 ReadInt()
--*
--no static method,use ':'
function ByteBuffer:ReadInt() end 

--[Comment]
--overrides:
--*
--UInt16 ReadShort()
--*
--no static method,use ':'
function ByteBuffer:ReadShort() end 

--[Comment]
--overrides:
--*
--Int64 ReadLong()
--*
--no static method,use ':'
function ByteBuffer:ReadLong() end 

--[Comment]
--overrides:
--*
--Single ReadFloat()
--*
--no static method,use ':'
function ByteBuffer:ReadFloat() end 

--[Comment]
--overrides:
--*
--Double ReadDouble()
--*
--no static method,use ':'
function ByteBuffer:ReadDouble() end 

--[Comment]
--overrides:
--*
--String ReadString()
--*
--no static method,use ':'
function ByteBuffer:ReadString() end 

--[Comment]
--overrides:
--*
--Byte[] ReadBytes()
--*
--no static method,use ':'
function ByteBuffer:ReadBytes() end 

--[Comment]
--overrides:
--*
--LuaByteBuffer ReadBuffer()
--*
--no static method,use ':'
function ByteBuffer:ReadBuffer() end 

--[Comment]
--overrides:
--*
--Byte[] ToBytes()
--*
--no static method,use ':'
function ByteBuffer:ToBytes() end 

--[Comment]
--overrides:
--*
--Void Flush()
--*
--no static method,use ':'
function ByteBuffer:Flush() end 

LuaBehaviour = {} 
--*
--[Comment]
--consturctor for LuaBehaviour overrides:
--*
--LuaBehaviour.New()
--*

function LuaBehaviour.New() end
--*
--[Comment]
-- property: Boolean LuaBehaviour.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
LuaBehaviour.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean LuaBehaviour.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
LuaBehaviour.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean LuaBehaviour.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
LuaBehaviour.enabled = nil 
--*
--[Comment]
-- property: Boolean LuaBehaviour.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
LuaBehaviour.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform LuaBehaviour.transform	get	
--The Transform attached to this GameObject.
LuaBehaviour.transform = nil 
--*
--[Comment]
-- property: GameObject LuaBehaviour.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
LuaBehaviour.gameObject = nil 
--*
--[Comment]
-- property: String LuaBehaviour.tag	get	set	
--The tag of this game object.
LuaBehaviour.tag = nil 
--*
--[Comment]
-- property: String LuaBehaviour.name	get	set	
--The name of the object.
LuaBehaviour.name = nil 
--*
--[Comment]
-- property: HideFlags LuaBehaviour.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
LuaBehaviour.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void AddClick(GameObject go,LuaFunction luafunc)
--*
--no static method,use ':'
function LuaBehaviour:AddClick() end 

--[Comment]
--overrides:
--*
--Void RemoveClick(GameObject go)
--*
--no static method,use ':'
function LuaBehaviour:RemoveClick() end 

--[Comment]
--overrides:
--*
--Void ClearClick()
--*
--no static method,use ':'
function LuaBehaviour:ClearClick() end 

GameManager = {} 
--*
--[Comment]
--consturctor for GameManager overrides:
--*
--GameManager.New()
--*

function GameManager.New() end
--*
--[Comment]
-- property: Boolean GameManager.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
GameManager.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean GameManager.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
GameManager.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean GameManager.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
GameManager.enabled = nil 
--*
--[Comment]
-- property: Boolean GameManager.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
GameManager.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform GameManager.transform	get	
--The Transform attached to this GameObject.
GameManager.transform = nil 
--*
--[Comment]
-- property: GameObject GameManager.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
GameManager.gameObject = nil 
--*
--[Comment]
-- property: String GameManager.tag	get	set	
--The tag of this game object.
GameManager.tag = nil 
--*
--[Comment]
-- property: String GameManager.name	get	set	
--The name of the object.
GameManager.name = nil 
--*
--[Comment]
-- property: HideFlags GameManager.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
GameManager.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void CheckExtractResource()
--*
--no static method,use ':'
function GameManager:CheckExtractResource() end 

--[Comment]
--overrides:
--*
--Void OnResourceInited()
--*
--no static method,use ':'
function GameManager:OnResourceInited() end 

LuaManager = {} 
--*
--[Comment]
--consturctor for LuaManager overrides:
--*
--LuaManager.New()
--*

function LuaManager.New() end
--*
--[Comment]
-- property: Boolean LuaManager.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
LuaManager.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean LuaManager.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
LuaManager.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean LuaManager.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
LuaManager.enabled = nil 
--*
--[Comment]
-- property: Boolean LuaManager.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
LuaManager.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform LuaManager.transform	get	
--The Transform attached to this GameObject.
LuaManager.transform = nil 
--*
--[Comment]
-- property: GameObject LuaManager.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
LuaManager.gameObject = nil 
--*
--[Comment]
-- property: String LuaManager.tag	get	set	
--The tag of this game object.
LuaManager.tag = nil 
--*
--[Comment]
-- property: String LuaManager.name	get	set	
--The name of the object.
LuaManager.name = nil 
--*
--[Comment]
-- property: HideFlags LuaManager.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
LuaManager.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void InitStart()
--*
--no static method,use ':'
function LuaManager:InitStart() end 

--[Comment]
--overrides:
--*
--Object[] DoFile(String filename)
--*
--no static method,use ':'
function LuaManager:DoFile() end 

--[Comment]
--overrides:
--*
--Void Require(String filename)
--*
--no static method,use ':'
function LuaManager:Require() end 

--[Comment]
--overrides:
--*
--Object[] CallFunction(String funcName,Object[] args)
--*
--no static method,use ':'
function LuaManager:CallFunction() end 

--[Comment]
--overrides:
--*
--Void LuaGC()
--*
--no static method,use ':'
function LuaManager:LuaGC() end 

--[Comment]
--overrides:
--*
--Void Close()
--*
--no static method,use ':'
function LuaManager:Close() end 

PanelManager = {} 
--*
--[Comment]
--consturctor for PanelManager overrides:
--*
--PanelManager.New()
--*

function PanelManager.New() end
--*
--[Comment]
-- property: Boolean PanelManager.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
PanelManager.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean PanelManager.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
PanelManager.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean PanelManager.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
PanelManager.enabled = nil 
--*
--[Comment]
-- property: Boolean PanelManager.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
PanelManager.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform PanelManager.transform	get	
--The Transform attached to this GameObject.
PanelManager.transform = nil 
--*
--[Comment]
-- property: GameObject PanelManager.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
PanelManager.gameObject = nil 
--*
--[Comment]
-- property: String PanelManager.tag	get	set	
--The tag of this game object.
PanelManager.tag = nil 
--*
--[Comment]
-- property: String PanelManager.name	get	set	
--The name of the object.
PanelManager.name = nil 
--*
--[Comment]
-- property: HideFlags PanelManager.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
PanelManager.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void CreatePanel(String name,LuaFunction func)
--*
--no static method,use ':'
function PanelManager:CreatePanel() end 

--[Comment]
--overrides:
--*
--Void ClosePanel(String name)
--*
--no static method,use ':'
function PanelManager:ClosePanel() end 

SoundManager = {} 
--*
--[Comment]
--consturctor for SoundManager overrides:
--*
--SoundManager.New()
--*

function SoundManager.New() end
--*
--[Comment]
-- property: Boolean SoundManager.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
SoundManager.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean SoundManager.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
SoundManager.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean SoundManager.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
SoundManager.enabled = nil 
--*
--[Comment]
-- property: Boolean SoundManager.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
SoundManager.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform SoundManager.transform	get	
--The Transform attached to this GameObject.
SoundManager.transform = nil 
--*
--[Comment]
-- property: GameObject SoundManager.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
SoundManager.gameObject = nil 
--*
--[Comment]
-- property: String SoundManager.tag	get	set	
--The tag of this game object.
SoundManager.tag = nil 
--*
--[Comment]
-- property: String SoundManager.name	get	set	
--The name of the object.
SoundManager.name = nil 
--*
--[Comment]
-- property: HideFlags SoundManager.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
SoundManager.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--AudioClip LoadAudioClip(String path)
--*
--no static method,use ':'
function SoundManager:LoadAudioClip() end 

--[Comment]
--overrides:
--*
--Boolean CanPlayBackSound()
--*
--no static method,use ':'
function SoundManager:CanPlayBackSound() end 

--[Comment]
--overrides:
--*
--Void PlayBacksound(String name,Boolean canPlay)
--*
--no static method,use ':'
function SoundManager:PlayBacksound() end 

--[Comment]
--overrides:
--*
--Boolean CanPlaySoundEffect()
--*
--no static method,use ':'
function SoundManager:CanPlaySoundEffect() end 

--[Comment]
--overrides:
--*
--Void Play(AudioClip clip,Vector3 position)
--*
--no static method,use ':'
function SoundManager:Play() end 

TimerManager = {} 
--*
--[Comment]
--consturctor for TimerManager overrides:
--*
--TimerManager.New()
--*

function TimerManager.New() end
--*
--[Comment]
-- property: Single TimerManager.Interval	get	set	
TimerManager.Interval = nil 
--*
--[Comment]
-- property: Boolean TimerManager.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
TimerManager.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean TimerManager.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
TimerManager.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean TimerManager.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
TimerManager.enabled = nil 
--*
--[Comment]
-- property: Boolean TimerManager.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
TimerManager.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform TimerManager.transform	get	
--The Transform attached to this GameObject.
TimerManager.transform = nil 
--*
--[Comment]
-- property: GameObject TimerManager.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
TimerManager.gameObject = nil 
--*
--[Comment]
-- property: String TimerManager.tag	get	set	
--The tag of this game object.
TimerManager.tag = nil 
--*
--[Comment]
-- property: String TimerManager.name	get	set	
--The name of the object.
TimerManager.name = nil 
--*
--[Comment]
-- property: HideFlags TimerManager.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
TimerManager.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void StartTimer(Single value)
--*
--no static method,use ':'
function TimerManager:StartTimer() end 

--[Comment]
--overrides:
--*
--Void StopTimer()
--*
--no static method,use ':'
function TimerManager:StopTimer() end 

--[Comment]
--overrides:
--*
--Void AddTimerEvent(TimerInfo info)
--*
--no static method,use ':'
function TimerManager:AddTimerEvent() end 

--[Comment]
--overrides:
--*
--Void RemoveTimerEvent(TimerInfo info)
--*
--no static method,use ':'
function TimerManager:RemoveTimerEvent() end 

--[Comment]
--overrides:
--*
--Void StopTimerEvent(TimerInfo info)
--*
--no static method,use ':'
function TimerManager:StopTimerEvent() end 

--[Comment]
--overrides:
--*
--Void ResumeTimerEvent(TimerInfo info)
--*
--no static method,use ':'
function TimerManager:ResumeTimerEvent() end 

ThreadManager = {} 
--*
--[Comment]
--consturctor for ThreadManager overrides:
--*
--ThreadManager.New()
--*

function ThreadManager.New() end
--*
--[Comment]
-- property: Boolean ThreadManager.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
ThreadManager.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean ThreadManager.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
ThreadManager.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean ThreadManager.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
ThreadManager.enabled = nil 
--*
--[Comment]
-- property: Boolean ThreadManager.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
ThreadManager.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform ThreadManager.transform	get	
--The Transform attached to this GameObject.
ThreadManager.transform = nil 
--*
--[Comment]
-- property: GameObject ThreadManager.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
ThreadManager.gameObject = nil 
--*
--[Comment]
-- property: String ThreadManager.tag	get	set	
--The tag of this game object.
ThreadManager.tag = nil 
--*
--[Comment]
-- property: String ThreadManager.name	get	set	
--The name of the object.
ThreadManager.name = nil 
--*
--[Comment]
-- property: HideFlags ThreadManager.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
ThreadManager.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void AddEvent(ThreadEvent ev,Action`1 func)
--*
--no static method,use ':'
function ThreadManager:AddEvent() end 

NetworkManager = {} 
--*
--[Comment]
--consturctor for NetworkManager overrides:
--*
--NetworkManager.New()
--*

function NetworkManager.New() end
--*
--[Comment]
-- property: Boolean NetworkManager.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
NetworkManager.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean NetworkManager.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
NetworkManager.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean NetworkManager.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
NetworkManager.enabled = nil 
--*
--[Comment]
-- property: Boolean NetworkManager.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
NetworkManager.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform NetworkManager.transform	get	
--The Transform attached to this GameObject.
NetworkManager.transform = nil 
--*
--[Comment]
-- property: GameObject NetworkManager.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
NetworkManager.gameObject = nil 
--*
--[Comment]
-- property: String NetworkManager.tag	get	set	
--The tag of this game object.
NetworkManager.tag = nil 
--*
--[Comment]
-- property: String NetworkManager.name	get	set	
--The name of the object.
NetworkManager.name = nil 
--*
--[Comment]
-- property: HideFlags NetworkManager.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
NetworkManager.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void OnInit()
--*
--no static method,use ':'
function NetworkManager:OnInit() end 

--[Comment]
--overrides:
--*
--Void Unload()
--*
--no static method,use ':'
function NetworkManager:Unload() end 

--[Comment]
--overrides:
--*
--Object[] CallMethod(String func,Object[] args)
--*
--no static method,use ':'
function NetworkManager:CallMethod() end 

--[Comment]
--overrides:
--*
--Void AddEvent(Int32 _event,ByteBuffer data)
--*
--static method,use '.'
function NetworkManager.AddEvent() end 

--[Comment]
--overrides:
--*
--Void SendConnect()
--*
--no static method,use ':'
function NetworkManager:SendConnect() end 

--[Comment]
--overrides:
--*
--Void SendMessage(ByteBuffer buffer)
--*
--no static method,use ':'
function NetworkManager:SendMessage() end 

ResourceManager = {} 
--*
--[Comment]
--consturctor for ResourceManager overrides:
--*
--ResourceManager.New()
--*

function ResourceManager.New() end
--*
--[Comment]
-- property: Boolean ResourceManager.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
ResourceManager.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean ResourceManager.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
ResourceManager.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean ResourceManager.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
ResourceManager.enabled = nil 
--*
--[Comment]
-- property: Boolean ResourceManager.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
ResourceManager.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform ResourceManager.transform	get	
--The Transform attached to this GameObject.
ResourceManager.transform = nil 
--*
--[Comment]
-- property: GameObject ResourceManager.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
ResourceManager.gameObject = nil 
--*
--[Comment]
-- property: String ResourceManager.tag	get	set	
--The tag of this game object.
ResourceManager.tag = nil 
--*
--[Comment]
-- property: String ResourceManager.name	get	set	
--The name of the object.
ResourceManager.name = nil 
--*
--[Comment]
-- property: HideFlags ResourceManager.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
ResourceManager.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void Initialize(String manifestName,Action initOK)
--*
--no static method,use ':'
function ResourceManager:Initialize() end 

--[Comment]
--overrides:
--*
--Void LoadPrefab(String abName,String assetName,Action`1 func)
--*
--Void LoadPrefab(String abName,String[] assetNames,Action`1 func)
--*
--Void LoadPrefab(String abName,String[] assetNames,LuaFunction func)
--*
--no static method,use ':'
function ResourceManager:LoadPrefab() end 

--[Comment]
--overrides:
--*
--Void UnloadAssetBundle(String abName,Boolean isThorough)
--*
--no static method,use ':'
function ResourceManager:UnloadAssetBundle() end 

UIManager = {} 
--*
--[Comment]
--consturctor for UIManager overrides:
--*
--UIManager.New()
--*

function UIManager.New() end
--*
--[Comment]
-- property: Boolean UIManager.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
UIManager.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean UIManager.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
UIManager.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean UIManager.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
UIManager.enabled = nil 
--*
--[Comment]
-- property: Boolean UIManager.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
UIManager.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform UIManager.transform	get	
--The Transform attached to this GameObject.
UIManager.transform = nil 
--*
--[Comment]
-- property: GameObject UIManager.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
UIManager.gameObject = nil 
--*
--[Comment]
-- property: String UIManager.tag	get	set	
--The tag of this game object.
UIManager.tag = nil 
--*
--[Comment]
-- property: String UIManager.name	get	set	
--The name of the object.
UIManager.name = nil 
--*
--[Comment]
-- property: HideFlags UIManager.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
UIManager.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void Awake()
--*
--no static method,use ':'
function UIManager:Awake() end 

--[Comment]
--overrides:
--*
--Void ShowUIForms(String uiFormName,Boolean isLuaForm)
--*
--no static method,use ':'
function UIManager:ShowUIForms() end 

--[Comment]
--overrides:
--*
--Void CloseUIForms(String uiFormName)
--*
--no static method,use ':'
function UIManager:CloseUIForms() end 

--[Comment]
--overrides:
--*
--Int32 ShowALLUIFormCount()
--*
--no static method,use ':'
function UIManager:ShowALLUIFormCount() end 

--[Comment]
--overrides:
--*
--Int32 ShowCurrentUIFormsCount()
--*
--no static method,use ':'
function UIManager:ShowCurrentUIFormsCount() end 

--[Comment]
--overrides:
--*
--Int32 ShowCurrentStackUIFormsCount()
--*
--no static method,use ':'
function UIManager:ShowCurrentStackUIFormsCount() end 

BaseUIForm = {} 
--*
--[Comment]
--consturctor for BaseUIForm overrides:
--*
--BaseUIForm.New()
--*

function BaseUIForm.New() end
--*
--[Comment]
-- property: UIType BaseUIForm.CurrentUIType	get	set	
BaseUIForm.CurrentUIType = nil 
--*
--[Comment]
-- property: Boolean BaseUIForm.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
BaseUIForm.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean BaseUIForm.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
BaseUIForm.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean BaseUIForm.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
BaseUIForm.enabled = nil 
--*
--[Comment]
-- property: Boolean BaseUIForm.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
BaseUIForm.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform BaseUIForm.transform	get	
--The Transform attached to this GameObject.
BaseUIForm.transform = nil 
--*
--[Comment]
-- property: GameObject BaseUIForm.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
BaseUIForm.gameObject = nil 
--*
--[Comment]
-- property: String BaseUIForm.tag	get	set	
--The tag of this game object.
BaseUIForm.tag = nil 
--*
--[Comment]
-- property: String BaseUIForm.name	get	set	
--The name of the object.
BaseUIForm.name = nil 
--*
--[Comment]
-- property: HideFlags BaseUIForm.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
BaseUIForm.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void OnInitialize()
--*
--no static method,use ':'
function BaseUIForm:OnInitialize() end 

--[Comment]
--overrides:
--*
--Void Display()
--*
--no static method,use ':'
function BaseUIForm:Display() end 

--[Comment]
--overrides:
--*
--Void Hiding()
--*
--no static method,use ':'
function BaseUIForm:Hiding() end 

--[Comment]
--overrides:
--*
--Void Redisplay()
--*
--no static method,use ':'
function BaseUIForm:Redisplay() end 

--[Comment]
--overrides:
--*
--Void Freeze()
--*
--no static method,use ':'
function BaseUIForm:Freeze() end 

--[Comment]
--overrides:
--*
--Void ReceiveMessage(String messagType,DelMessageDelivery handler)
--*
--no static method,use ':'
function BaseUIForm:ReceiveMessage() end 

--[Comment]
--overrides:
--*
--String Show(String id)
--*
--no static method,use ':'
function BaseUIForm:Show() end 

LuaUIForm = {} 
--*
--[Comment]
--consturctor for LuaUIForm overrides:
--*
--LuaUIForm.New()
--*

function LuaUIForm.New() end
--*
--[Comment]
-- property: UIType LuaUIForm.CurrentUIType	get	set	
LuaUIForm.CurrentUIType = nil 
--*
--[Comment]
-- property: Boolean LuaUIForm.useGUILayout	get	set	
--Disabling this lets you skip the GUI layout phase.
LuaUIForm.useGUILayout = nil 
--*
--[Comment]
-- property: Boolean LuaUIForm.runInEditMode	get	set	
--Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
LuaUIForm.runInEditMode = nil 
--*
--[Comment]
-- property: Boolean LuaUIForm.enabled	get	set	
--Enabled Behaviours are Updated, disabled Behaviours are not.
LuaUIForm.enabled = nil 
--*
--[Comment]
-- property: Boolean LuaUIForm.isActiveAndEnabled	get	
--Has the Behaviour had enabled called.
LuaUIForm.isActiveAndEnabled = nil 
--*
--[Comment]
-- property: Transform LuaUIForm.transform	get	
--The Transform attached to this GameObject.
LuaUIForm.transform = nil 
--*
--[Comment]
-- property: GameObject LuaUIForm.gameObject	get	
--The game object this component is attached to. A component is always attached to a game object.
LuaUIForm.gameObject = nil 
--*
--[Comment]
-- property: String LuaUIForm.tag	get	set	
--The tag of this game object.
LuaUIForm.tag = nil 
--*
--[Comment]
-- property: String LuaUIForm.name	get	set	
--The name of the object.
LuaUIForm.name = nil 
--*
--[Comment]
-- property: HideFlags LuaUIForm.hideFlags	get	set	
--Should the object be hidden, saved with the scene or modifiable by the user?
LuaUIForm.hideFlags = nil 
--*
--[Comment]
--overrides:
--*
--Void OnInitialize()
--*
--no static method,use ':'
function LuaUIForm:OnInitialize() end 

--[Comment]
--overrides:
--*
--Void Display()
--*
--no static method,use ':'
function LuaUIForm:Display() end 

--[Comment]
--overrides:
--*
--Void Hiding()
--*
--no static method,use ':'
function LuaUIForm:Hiding() end 

--[Comment]
--overrides:
--*
--Void Redisplay()
--*
--no static method,use ':'
function LuaUIForm:Redisplay() end 

--[Comment]
--overrides:
--*
--Void Freeze()
--*
--no static method,use ':'
function LuaUIForm:Freeze() end 

--[Comment]
--overrides:
--*
--Void OpenUIForm(String uiFormName)
--*
--no static method,use ':'
function LuaUIForm:OpenUIForm() end 

--[Comment]
--overrides:
--*
--Void CloseUIForm()
--*
--no static method,use ':'
function LuaUIForm:CloseUIForm() end 

--[Comment]
--overrides:
--*
--String Show(String id)
--*
--no static method,use ':'
function LuaUIForm:Show() end 

--[Comment]
--overrides:
--*
--Void OnMessage(IMessage message)
--*
--no static method,use ':'
function LuaUIForm:OnMessage() end 

--[Comment]
--overrides:
--*
--Void AddClickListener(GameObject go,LuaFunction func)
--*
--no static method,use ':'
function LuaUIForm:AddClickListener() end 

--[Comment]
--overrides:
--*
--Void RemoveClickListener(GameObject go)
--*
--no static method,use ':'
function LuaUIForm:RemoveClickListener() end 

--[Comment]
--overrides:
--*
--Void ClearEventMap()
--*
--no static method,use ':'
function LuaUIForm:ClearEventMap() end 

UIType = {} 
--*
--[Comment]
--consturctor for UIType overrides:
--*
--UIType.New()
--*

function UIType.New() end
--*
