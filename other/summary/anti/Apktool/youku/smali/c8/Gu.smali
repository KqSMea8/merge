.class public Lc8/Gu;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hu;


# direct methods
.method constructor <init>(Lc8/Hu;)V
    .locals 0

    .prologue
    .line 1328
    iput-object p1, p0, Lc8/Gu;->this$0:Lc8/Hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1329
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Lc8/Gu;->this$0:Lc8/Hu;

    iget-object v0, v0, Lc8/Hu;->mDropDownList:Lc8/Bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Gu;->this$0:Lc8/Hu;

    iget-object v0, v0, Lc8/Hu;->mDropDownList:Lc8/Bt;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Gu;->this$0:Lc8/Hu;

    iget-object v0, v0, Lc8/Hu;->mDropDownList:Lc8/Bt;

    .line 1334
    invoke-virtual {v0}, Lc8/Bt;->getCount()I

    move-result v0

    iget-object v1, p0, Lc8/Gu;->this$0:Lc8/Hu;

    iget-object v1, v1, Lc8/Hu;->mDropDownList:Lc8/Bt;

    invoke-virtual {v1}, Lc8/Bt;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lc8/Gu;->this$0:Lc8/Hu;

    iget-object v0, v0, Lc8/Hu;->mDropDownList:Lc8/Bt;

    .line 1335
    invoke-virtual {v0}, Lc8/Bt;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lc8/Gu;->this$0:Lc8/Hu;

    iget v1, v1, Lc8/Hu;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 1336
    iget-object v0, p0, Lc8/Gu;->this$0:Lc8/Hu;

    iget-object v0, v0, Lc8/Hu;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1337
    iget-object v0, p0, Lc8/Gu;->this$0:Lc8/Hu;

    invoke-virtual {v0}, Lc8/Hu;->show()V

    .line 1339
    :cond_0
    return-void
.end method
