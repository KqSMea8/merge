.class public Lc8/HIj;
.super Ljava/lang/Object;
.source "UrlRepositoryImpl.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IIj;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IIj;


# direct methods
.method constructor <init>(Lc8/IIj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/IIj;

    .prologue
    .line 35
    iput-object p1, p0, Lc8/HIj;->this$0:Lc8/IIj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "fromCache"    # Z

    .prologue
    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lc8/GIj;

    invoke-direct {v1, p0}, Lc8/GIj;-><init>(Lc8/HIj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method
