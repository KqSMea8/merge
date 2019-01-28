.class public Lc8/ad;
.super Ljava/lang/Object;
.source "BottomSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dd;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dd;


# direct methods
.method constructor <init>(Lc8/dd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dd;

    .prologue
    .line 133
    iput-object p1, p0, Lc8/ad;->this$0:Lc8/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lc8/ad;->this$0:Lc8/dd;

    iget-boolean v0, v0, Lc8/dd;->mCancelable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ad;->this$0:Lc8/dd;

    invoke-virtual {v0}, Lc8/dd;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ad;->this$0:Lc8/dd;

    invoke-virtual {v0}, Lc8/dd;->shouldWindowCloseOnTouchOutside()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lc8/ad;->this$0:Lc8/dd;

    invoke-virtual {v0}, Lc8/dd;->cancel()V

    .line 139
    :cond_0
    return-void
.end method
