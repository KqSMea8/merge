.class public Lc8/Wu;
.super Lc8/Kt;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zu;


# direct methods
.method constructor <init>(Lc8/Zu;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zu;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 170
    iput-object p1, p0, Lc8/Wu;->this$0:Lc8/Zu;

    invoke-direct {p0, p2}, Lc8/Kt;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lc8/mr;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lc8/Wu;->this$0:Lc8/Zu;

    iget-object v0, v0, Lc8/Zu;->mPopup:Lc8/fr;

    invoke-virtual {v0}, Lc8/fr;->getPopup()Lc8/dr;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lc8/Wu;->this$0:Lc8/Zu;

    invoke-virtual {v0}, Lc8/Zu;->show()V

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lc8/Wu;->this$0:Lc8/Zu;

    invoke-virtual {v0}, Lc8/Zu;->dismiss()V

    .line 180
    const/4 v0, 0x1

    return v0
.end method
