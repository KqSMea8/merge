.class public Lcom/taobao/tao/messagekit/base/MsgRouter$2;
.super Ljava/util/ArrayList;
.source "MsgRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/DIf;->onInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/DIf;


# direct methods
.method public constructor <init>(Lc8/DIf;)V
    .locals 1
    .param p1, "this$0"    # Lc8/DIf;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/taobao/tao/messagekit/base/MsgRouter$2;->this$0:Lc8/DIf;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    const-string/jumbo v0, "MKT_DIMENS_BIZ"

    invoke-virtual {p0, v0}, Lcom/taobao/tao/messagekit/base/MsgRouter$2;->add(Ljava/lang/Object;)Z

    .line 107
    const-string/jumbo v0, "MKT_DIMENS_DUP"

    invoke-virtual {p0, v0}, Lcom/taobao/tao/messagekit/base/MsgRouter$2;->add(Ljava/lang/Object;)Z

    .line 108
    const-string/jumbo v0, "MKT_DIMENS_MQTT"

    invoke-virtual {p0, v0}, Lcom/taobao/tao/messagekit/base/MsgRouter$2;->add(Ljava/lang/Object;)Z

    .line 109
    const-string/jumbo v0, "MKT_DIMENS_TYPE"

    invoke-virtual {p0, v0}, Lcom/taobao/tao/messagekit/base/MsgRouter$2;->add(Ljava/lang/Object;)Z

    .line 110
    const-string/jumbo v0, "MKT_DIMENS_SUBTYPE"

    invoke-virtual {p0, v0}, Lcom/taobao/tao/messagekit/base/MsgRouter$2;->add(Ljava/lang/Object;)Z

    .line 111
    const-string/jumbo v0, "MKT_DIMENS_TOPIC"

    invoke-virtual {p0, v0}, Lcom/taobao/tao/messagekit/base/MsgRouter$2;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method
