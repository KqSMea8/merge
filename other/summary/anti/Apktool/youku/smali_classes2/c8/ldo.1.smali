.class public Lc8/ldo;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/udo;->setProgress(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/udo;


# direct methods
.method constructor <init>(Lc8/udo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/udo;

    .prologue
    .line 349
    iput-object p1, p0, Lc8/ldo;->this$0:Lc8/udo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 352
    iget-object v1, p0, Lc8/ldo;->this$0:Lc8/udo;

    invoke-static {v1}, Lc8/udo;->access$100(Lc8/udo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/wdo;

    .line 353
    .local v0, "listener":Lc8/wdo;
    iget-object v2, p0, Lc8/ldo;->this$0:Lc8/udo;

    invoke-static {v2}, Lc8/udo;->access$200(Lc8/udo;)F

    move-result v2

    invoke-interface {v0, v2}, Lc8/wdo;->onProgressUpdateEnd(F)V

    goto :goto_0

    .line 355
    .end local v0    # "listener":Lc8/wdo;
    :cond_0
    return-void
.end method
