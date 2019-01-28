.class public Lc8/Jtf;
.super Ljava/lang/Object;
.source "OrangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/receiver/OrangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/orange/receiver/OrangeReceiver;


# direct methods
.method public constructor <init>(Lcom/taobao/orange/receiver/OrangeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/orange/receiver/OrangeReceiver;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 21
    iput-object p1, p0, Lc8/Jtf;->this$0:Lcom/taobao/orange/receiver/OrangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Jsf;->retryFailRequests()V

    .line 25
    return-void
.end method
