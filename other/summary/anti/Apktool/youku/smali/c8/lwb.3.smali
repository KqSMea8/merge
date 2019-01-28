.class public Lc8/lwb;
.super Ljava/lang/Object;
.source "Package.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nwb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public cachedInfoIndex:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public depInfos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/alibaba/aliweex/cache/Package$Info;",
            ">;"
        }
    .end annotation
.end field

.field public group:Ljava/lang/String;

.field public remoteInfo:Lc8/mwb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc8/lwb;->depInfos:Ljava/util/Vector;

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc8/lwb;->cachedInfoIndex:Ljava/util/Vector;

    .line 20
    new-instance v0, Lc8/mwb;

    invoke-direct {v0}, Lc8/mwb;-><init>()V

    iput-object v0, p0, Lc8/lwb;->remoteInfo:Lc8/mwb;

    return-void
.end method
