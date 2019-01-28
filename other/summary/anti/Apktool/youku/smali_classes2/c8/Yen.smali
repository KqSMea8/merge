.class public Lc8/Yen;
.super Ljava/lang/Object;
.source "VipDownloadLegalQueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultParam"
.end annotation


# instance fields
.field public benefitTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public sceneCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;


# direct methods
.method private constructor <init>(Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;)V
    .locals 1

    .prologue
    .line 27
    iput-object p1, p0, Lc8/Yen;->this$0:Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, "bufferSpeed"

    iput-object v0, p0, Lc8/Yen;->sceneCode:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Yen;->benefitTypes:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;Lc8/Xen;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;
    .param p2, "x1"    # Lc8/Xen;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lc8/Yen;-><init>(Lcom/youku/service/download/request/VipDownloadLegalQueryRequest;)V

    return-void
.end method
