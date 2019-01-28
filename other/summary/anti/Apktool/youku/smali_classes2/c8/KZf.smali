.class public Lc8/KZf;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QZf;->doTransitionAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/QZf;


# direct methods
.method constructor <init>(Lc8/QZf;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lc8/KZf;->this$0:Lc8/QZf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lc8/KZf;->this$0:Lc8/QZf;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/QZf;->access$202(Lc8/QZf;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 261
    iget-object v1, p0, Lc8/KZf;->this$0:Lc8/QZf;

    invoke-static {v1}, Lc8/QZf;->access$300(Lc8/QZf;)Lc8/tbg;

    move-result-object v0

    .line 262
    .local v0, "component":Lc8/tbg;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/KZf;->this$0:Lc8/QZf;

    invoke-static {v1}, Lc8/QZf;->access$400(Lc8/QZf;)Lc8/HYf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/HYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "transitionEnd"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const-string/jumbo v1, "transitionEnd"

    invoke-virtual {v0, v1}, Lc8/tbg;->fireEvent(Ljava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method
