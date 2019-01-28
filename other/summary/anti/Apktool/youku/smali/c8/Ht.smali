.class public Lc8/Ht;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Kt;->addDetachListenerBase(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mIsAttached:Z

.field final synthetic this$0:Lc8/Kt;


# direct methods
.method constructor <init>(Lc8/Kt;)V
    .locals 1
    .param p1, "this$0"    # Lc8/Kt;

    .prologue
    .line 105
    iput-object p1, p0, Lc8/Ht;->this$0:Lc8/Kt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iget-object v0, p0, Lc8/Ht;->this$0:Lc8/Kt;

    iget-object v0, v0, Lc8/Kt;->mSrc:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/Ht;->mIsAttached:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lc8/Ht;->mIsAttached:Z

    .line 111
    .local v0, "wasAttached":Z
    iget-object v1, p0, Lc8/Ht;->this$0:Lc8/Kt;

    iget-object v1, v1, Lc8/Kt;->mSrc:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, p0, Lc8/Ht;->mIsAttached:Z

    .line 112
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lc8/Ht;->mIsAttached:Z

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lc8/Ht;->this$0:Lc8/Kt;

    invoke-static {v1}, Lc8/Kt;->access$000(Lc8/Kt;)V

    .line 115
    :cond_0
    return-void
.end method
