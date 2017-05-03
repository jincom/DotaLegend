using System;
using UnityEngine;
using UnityEngine.EventSystems;

namespace LuaFramework
{
    public class EventTrigger :
    MonoBehaviour,
    IPointerEnterHandler,
    IPointerExitHandler,
    IPointerDownHandler,
    IPointerUpHandler,
    IPointerClickHandler,
    IInitializePotentialDragHandler,
    IBeginDragHandler,
    IDragHandler,
    IEndDragHandler,
    IDropHandler,
    IScrollHandler,
    IUpdateSelectedHandler,
    ISelectHandler,
    IDeselectHandler,
    IMoveHandler,
    ISubmitHandler,
    ICancelHandler
    {
        private bool m_IsPassEvent;
        public bool IsPassEvent
        {
            get { return m_IsPassEvent; }
            set { m_IsPassEvent = value; }
        }
        public delegate void BaseDelegate(GameObject go, BaseEventData data);
        public delegate void AxisDelegate(GameObject go, AxisEventData data);
        public delegate void PointerDelegate(GameObject go, PointerEventData data);

        public event PointerDelegate onEnter;
        public event PointerDelegate onExit;
        public event PointerDelegate onDown;
        public event PointerDelegate onUp;
        public event PointerDelegate onClick;
        public event PointerDelegate onInitializePotentialDrag;
        public event PointerDelegate onBeginDrag;
        public event PointerDelegate onDrag;
        public event PointerDelegate onEndDrag;
        public event PointerDelegate onDrop;
        public event PointerDelegate onScroll;
        public event BaseDelegate onSelect;
        public event BaseDelegate onUpdateSelected;
        public event BaseDelegate onDeselect;
        public event AxisDelegate onMove;
        public event BaseDelegate onSubmit;
        public event BaseDelegate onCancel;

        public EventTrigger() { m_IsPassEvent = true; }

        public static EventTrigger Get(GameObject go)
        {
            EventTrigger trigger = go.GetComponent<EventTrigger>();
            if (trigger == null)
            {
                trigger = go.AddComponent<EventTrigger>();
            }
            return trigger;
        }

        public void OnBeginDrag(PointerEventData eventData)
        {
            if (onBeginDrag != null)
            {
                onBeginDrag(gameObject, eventData);
            }
            else
            {
                PassEvent<IBeginDragHandler>(eventData, ExecuteEvents.beginDragHandler);
            }
        }

        public void OnCancel(BaseEventData eventData)
        {
            if (onCancel != null)
            {
                onCancel(gameObject, eventData);
            }
            else
            {
                PassEvent<ICancelHandler>(eventData, ExecuteEvents.cancelHandler);
            }
        }

        public void OnDeselect(BaseEventData eventData)
        {
            if (onDeselect != null)
            {
                onDeselect(gameObject, eventData);
            }
            else
            {
                PassEvent<IDeselectHandler>(eventData, ExecuteEvents.deselectHandler);
            }
        }

        public void OnDrag(PointerEventData eventData)
        {
            if (onDrag != null)
            {
                onDrag(gameObject, eventData);
            }
            else
            {
                PassEvent<IDragHandler>(eventData, ExecuteEvents.dragHandler);
            }
        }

        public void OnDrop(PointerEventData eventData)
        {
            if (onDrop != null)
            {
                onDrop(gameObject, eventData);
            }
            else
            {
                PassEvent<IDropHandler>(eventData, ExecuteEvents.dropHandler);
            }
        }

        public void OnEndDrag(PointerEventData eventData)
        {
            if (onEndDrag != null)
            {
                onEndDrag(gameObject, eventData);
            }
            else
            {
                PassEvent<IEndDragHandler>(eventData, ExecuteEvents.endDragHandler);
            }
        }

        public void OnInitializePotentialDrag(PointerEventData eventData)
        {
            if (onInitializePotentialDrag != null)
            {
                onInitializePotentialDrag(gameObject, eventData);
            }
            else
            {
                PassEvent<IInitializePotentialDragHandler>(eventData, ExecuteEvents.initializePotentialDrag);
            }
        }

        public void OnMove(AxisEventData eventData)
        {
            if (onMove != null)
            {
                onMove(gameObject, eventData);
            }
            else
            {
                PassEvent<IMoveHandler>(eventData, ExecuteEvents.moveHandler);
            }
        }

        public void OnPointerClick(PointerEventData eventData)
        {
            if (onClick != null)
            {
                onClick(gameObject, eventData);
            }
            else
            {
                PassEvent<IPointerClickHandler>(eventData, ExecuteEvents.pointerClickHandler);
            }
        }

        public void OnPointerDown(PointerEventData eventData)
        {
            if (onDown != null)
            {
                onDown(gameObject, eventData);
            }
            else
            {
                PassEvent<IPointerDownHandler>(eventData, ExecuteEvents.pointerDownHandler);
            }
        }

        public void OnPointerEnter(PointerEventData eventData)
        {
            if (onEnter != null)
            {
                onEnter(gameObject, eventData);
            }
            else
            {
                PassEvent<IPointerEnterHandler>(eventData, ExecuteEvents.pointerEnterHandler);
            }
        }

        public void OnPointerExit(PointerEventData eventData)
        {
            if (onExit != null)
            {
                onExit(gameObject, eventData);
            }
            else
            {
                PassEvent<IPointerExitHandler>(eventData, ExecuteEvents.pointerExitHandler);
            }
        }

        public void OnPointerUp(PointerEventData eventData)
        {
            if (onUp != null)
            {
                onUp(gameObject, eventData);
            }
            else
            {
                PassEvent<IPointerUpHandler>(eventData, ExecuteEvents.pointerUpHandler);
            }
        }

        public void OnScroll(PointerEventData eventData)
        {
            if (onScroll != null)
            {
                onScroll(gameObject, eventData);
            }
            else
            {
                PassEvent<IScrollHandler>(eventData, ExecuteEvents.scrollHandler);
            }
        }

        public void OnSelect(BaseEventData eventData)
        {
            if (onSelect != null)
            {
                onSelect(gameObject, eventData);
            }
            else
            {
                PassEvent<ISelectHandler>(eventData, ExecuteEvents.selectHandler);
            }
        }

        public void OnSubmit(BaseEventData eventData)
        {
            if (onSubmit != null)
            {
                onSubmit(gameObject, eventData);
            }
            else
            {
                PassEvent<ISubmitHandler>(eventData, ExecuteEvents.submitHandler);
            }
        }

        public void OnUpdateSelected(BaseEventData eventData)
        {
            if (onUpdateSelected != null)
            {
                onUpdateSelected(gameObject, eventData);
            }
            else
            {
                PassEvent<IUpdateSelectedHandler>(eventData, ExecuteEvents.updateSelectedHandler);
            }
        }

        //把事件传递给父节点
        protected void PassEvent<T>
            (BaseEventData data, ExecuteEvents.EventFunction<T> callback) 
            where T : IEventSystemHandler
        {
            if (!m_IsPassEvent) return;

            Transform parent = transform.parent;
            if (parent == null) return;

            ExecuteEvents.ExecuteHierarchy<T>(parent.gameObject, data, callback);
        }
    }

}