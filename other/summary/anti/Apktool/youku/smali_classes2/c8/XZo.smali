.class public Lc8/XZo;
.super Ljava/lang/Object;
.source "Loading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZZo;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZZo;


# direct methods
.method constructor <init>(Lc8/ZZo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ZZo;

    .prologue
    .line 40
    iput-object p1, p0, Lc8/XZo;->this$0:Lc8/ZZo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lc8/XZo;->this$0:Lc8/ZZo;

    invoke-static {v0}, Lc8/ZZo;->access$000(Lc8/ZZo;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/XZo;->this$0:Lc8/ZZo;

    invoke-static {v0}, Lc8/ZZo;->access$000(Lc8/ZZo;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lc8/XZo;->this$0:Lc8/ZZo;

    invoke-static {v0}, Lc8/ZZo;->access$000(Lc8/ZZo;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 46
    :cond_0
    return-void
.end method
