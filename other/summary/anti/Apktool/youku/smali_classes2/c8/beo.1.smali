.class public Lc8/beo;
.super Ljava/lang/Object;
.source "CircleLoading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/deo;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/deo;


# direct methods
.method constructor <init>(Lc8/deo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/deo;

    .prologue
    .line 38
    iput-object p1, p0, Lc8/beo;->this$0:Lc8/deo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lc8/beo;->this$0:Lc8/deo;

    invoke-static {v0}, Lc8/deo;->access$000(Lc8/deo;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/beo;->this$0:Lc8/deo;

    invoke-static {v0}, Lc8/deo;->access$000(Lc8/deo;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lc8/beo;->this$0:Lc8/deo;

    invoke-static {v0}, Lc8/deo;->access$000(Lc8/deo;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 44
    :cond_0
    return-void
.end method
