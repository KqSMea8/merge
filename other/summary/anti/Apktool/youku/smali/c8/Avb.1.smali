.class public Lc8/Avb;
.super Ljava/lang/Object;
.source "Elevator.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ivb;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ivb;


# direct methods
.method constructor <init>(Lc8/Ivb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ivb;

    .prologue
    .line 170
    iput-object p1, p0, Lc8/Avb;->this$0:Lc8/Ivb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 174
    iget-object v0, p0, Lc8/Avb;->this$0:Lc8/Ivb;

    invoke-static {v0}, Lc8/Ivb;->access$500(Lc8/Ivb;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 175
    iget-object v0, p0, Lc8/Avb;->this$0:Lc8/Ivb;

    invoke-static {v0}, Lc8/Ivb;->access$600(Lc8/Ivb;)V

    .line 176
    iget-object v0, p0, Lc8/Avb;->this$0:Lc8/Ivb;

    invoke-static {v0}, Lc8/Ivb;->access$400(Lc8/Ivb;)Lc8/Hvb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lc8/Avb;->this$0:Lc8/Ivb;

    invoke-static {v0}, Lc8/Ivb;->access$400(Lc8/Ivb;)Lc8/Hvb;

    move-result-object v0

    invoke-interface {v0}, Lc8/Hvb;->changed()V

    .line 179
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
