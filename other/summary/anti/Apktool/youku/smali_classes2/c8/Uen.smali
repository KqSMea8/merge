.class public Lc8/Uen;
.super Ljava/lang/Object;
.source "VipDownloadLegalActiveRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultParam"
.end annotation


# instance fields
.field public sceneCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;


# direct methods
.method private constructor <init>(Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;)V
    .locals 1

    .prologue
    .line 23
    iput-object p1, p0, Lc8/Uen;->this$0:Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "bufferSpeed"

    iput-object v0, p0, Lc8/Uen;->sceneCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;Lc8/Ten;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;
    .param p2, "x1"    # Lc8/Ten;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lc8/Uen;-><init>(Lcom/youku/service/download/request/VipDownloadLegalActiveRequest;)V

    return-void
.end method
