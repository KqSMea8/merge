.class public Lc8/Vu;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zu;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zu;


# direct methods
.method constructor <init>(Lc8/Zu;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zu;

    .prologue
    .line 120
    iput-object p1, p0, Lc8/Vu;->this$0:Lc8/Zu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lc8/Vu;->this$0:Lc8/Zu;

    iget-object v0, v0, Lc8/Zu;->mOnDismissListener:Lc8/Xu;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lc8/Vu;->this$0:Lc8/Zu;

    iget-object v0, v0, Lc8/Zu;->mOnDismissListener:Lc8/Xu;

    iget-object v1, p0, Lc8/Vu;->this$0:Lc8/Zu;

    invoke-interface {v0, v1}, Lc8/Xu;->onDismiss(Lc8/Zu;)V

    .line 126
    :cond_0
    return-void
.end method
