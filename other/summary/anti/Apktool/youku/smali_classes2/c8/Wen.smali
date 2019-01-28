.class public Lc8/Wen;
.super Ljava/lang/Object;
.source "VipDownloadLegalConsumeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/download/request/VipDownloadLegalConsumeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultParam"
.end annotation


# instance fields
.field public reduceItems:Ljava/util/Map;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public sceneCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/service/download/request/VipDownloadLegalConsumeRequest;


# direct methods
.method private constructor <init>(Lcom/youku/service/download/request/VipDownloadLegalConsumeRequest;)V
    .locals 1

    .prologue
    .line 26
    iput-object p1, p0, Lc8/Wen;->this$0:Lcom/youku/service/download/request/VipDownloadLegalConsumeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "bufferSpeed"

    iput-object v0, p0, Lc8/Wen;->sceneCode:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Wen;->reduceItems:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/youku/service/download/request/VipDownloadLegalConsumeRequest;Lc8/Ven;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/service/download/request/VipDownloadLegalConsumeRequest;
    .param p2, "x1"    # Lc8/Ven;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/Wen;-><init>(Lcom/youku/service/download/request/VipDownloadLegalConsumeRequest;)V

    return-void
.end method
