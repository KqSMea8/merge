.class public Lc8/NVo;
.super Ljava/lang/Object;
.source "SideSlipSmallCardInfo.java"


# instance fields
.field public mComponentId:Ljava/lang/String;

.field public mIsAsyncLoad:Z

.field public sideSlipInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/MVo;",
            ">;"
        }
    .end annotation
.end field

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/NVo;->sideSlipInfos:Ljava/util/List;

    return-void
.end method
