.class public Lc8/Uob;
.super Ljava/lang/Object;
.source "PhenixBasedDrawableLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Wob;->setDrawable(Ljava/lang/String;Lc8/yVf;Lc8/vVf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Wob;

.field final synthetic val$drawableStrategy:Lc8/vVf;

.field final synthetic val$drawableTarget:Lc8/yVf;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Wob;Lc8/yVf;Ljava/lang/String;Lc8/vVf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Wob;

    .prologue
    .line 18
    iput-object p1, p0, Lc8/Uob;->this$0:Lc8/Wob;

    iput-object p2, p0, Lc8/Uob;->val$drawableTarget:Lc8/yVf;

    iput-object p3, p0, Lc8/Uob;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lc8/Uob;->val$drawableStrategy:Lc8/vVf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    iget-object v0, p0, Lc8/Uob;->val$drawableTarget:Lc8/yVf;

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lc8/Uob;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lc8/Uob;->val$drawableTarget:Lc8/yVf;

    instance-of v0, v0, Lc8/zVf;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lc8/Uob;->val$drawableTarget:Lc8/yVf;

    check-cast v0, Lc8/zVf;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lc8/zVf;->setDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    iget-object v1, p0, Lc8/Uob;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/ixf;->load(Ljava/lang/String;)Lc8/mxf;

    move-result-object v0

    iget-object v1, p0, Lc8/Uob;->val$drawableStrategy:Lc8/vVf;

    iget v1, v1, Lc8/vVf;->width:I

    iget-object v2, p0, Lc8/Uob;->val$drawableStrategy:Lc8/vVf;

    iget v2, v2, Lc8/vVf;->height:I

    invoke-virtual {v0, v3, v1, v2}, Lc8/mxf;->limitSize(Landroid/view/View;II)Lc8/mxf;

    move-result-object v0

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lc8/mxf;->notSharedDrawable(Z)Lc8/mxf;

    move-result-object v0

    new-instance v1, Lc8/Vob;

    iget-object v2, p0, Lc8/Uob;->val$drawableTarget:Lc8/yVf;

    invoke-direct {v1, v2}, Lc8/Vob;-><init>(Lc8/yVf;)V

    invoke-virtual {v0, v1}, Lc8/mxf;->succListener(Lc8/qxf;)Lc8/mxf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/mxf;->fetch()Lc8/nxf;

    goto :goto_0
.end method
