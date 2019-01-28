.class public Lc8/djb;
.super Ljava/lang/Object;
.source "QRView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ejb;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ejb;


# direct methods
.method constructor <init>(Lc8/ejb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ejb;

    .prologue
    .line 57
    iput-object p1, p0, Lc8/djb;->this$0:Lc8/ejb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lc8/djb;->this$0:Lc8/ejb;

    invoke-static {v0}, Lc8/ejb;->access$000(Lc8/ejb;)Lc8/sjb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/sjb;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 62
    iget-object v0, p0, Lc8/djb;->this$0:Lc8/ejb;

    iget-object v1, p0, Lc8/djb;->this$0:Lc8/ejb;

    invoke-static {v1}, Lc8/ejb;->access$000(Lc8/ejb;)Lc8/sjb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/sjb;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lc8/ejb;->access$102(Lc8/ejb;I)I

    .line 63
    return-void
.end method
