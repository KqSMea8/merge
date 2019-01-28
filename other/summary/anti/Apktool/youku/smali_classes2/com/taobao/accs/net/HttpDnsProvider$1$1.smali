.class public Lcom/taobao/accs/net/HttpDnsProvider$1$1;
.super Ljava/lang/Object;
.source "HttpDnsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/net/HttpDnsProvider$1;->onEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/accs/net/HttpDnsProvider$1;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/HttpDnsProvider$1;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/taobao/accs/net/HttpDnsProvider$1$1;->this$1:Lcom/taobao/accs/net/HttpDnsProvider$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v0

    invoke-interface {v0}, Lc8/MK;->saveData()V

    .line 38
    return-void
.end method
