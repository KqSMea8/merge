.class public Lc8/hI;
.super Ljava/lang/Object;
.source "PopupWindowController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jI;->initButtons(Ljava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jI;

.field final synthetic val$cancelButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lc8/jI;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lc8/hI;->this$0:Lc8/jI;

    iput-object p2, p0, Lc8/hI;->val$cancelButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 148
    iget-object v2, p0, Lc8/hI;->this$0:Lc8/jI;

    invoke-static {v2}, Lc8/jI;->access$000(Lc8/jI;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    .line 149
    .local v0, "height":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 150
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 151
    if-ge v1, v0, :cond_0

    .line 154
    iget-object v2, p0, Lc8/hI;->val$cancelButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->performClick()Z

    .line 157
    :cond_0
    return v3
.end method
