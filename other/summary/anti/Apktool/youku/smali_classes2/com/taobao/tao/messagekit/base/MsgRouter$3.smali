.class public Lcom/taobao/tao/messagekit/base/MsgRouter$3;
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
    .line 113
    iput-object p1, p0, Lcom/taobao/tao/messagekit/base/MsgRouter$3;->this$0:Lc8/DIf;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    const-string/jumbo v0, "MKT_MEASURE_FLOW"

    invoke-virtual {p0, v0}, Lcom/taobao/tao/messagekit/base/MsgRouter$3;->add(Ljava/lang/Object;)Z

    .line 115
    const-string/jumbo v0, "MKT_MEASURE_NET"

    invoke-virtual {p0, v0}, Lcom/taobao/tao/messagekit/base/MsgRouter$3;->add(Ljava/lang/Object;)Z

    .line 116
    const-string/jumbo v0, "MKT_MEASURE_PACK"

    invoke-virtual {p0, v0}, Lcom/taobao/tao/messagekit/base/MsgRouter$3;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method
