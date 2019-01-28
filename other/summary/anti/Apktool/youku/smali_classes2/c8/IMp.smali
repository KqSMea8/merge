.class public Lc8/IMp;
.super Ljava/lang/Object;
.source "MtopContext.java"


# instance fields
.field public apiId:Lc8/ENp;

.field public baseUrl:Ljava/lang/String;

.field public mtopBuilder:Lc8/COp;

.field public mtopInstance:Lc8/AOp;

.field public mtopListener:Lc8/QNp;

.field public mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

.field public mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

.field public networkRequest:Lc8/FPp;

.field public networkResponse:Lc8/KPp;

.field public property:Lmtopsdk/mtop/common/MtopNetworkProp;

.field public protocolParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public responseSource:Lmtopsdk/mtop/domain/ResponseSource;

.field public seqNo:Ljava/lang/String;

.field public stats:Lc8/pPp;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    iput-object v0, p0, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    return-void
.end method
