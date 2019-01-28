.class public Lc8/Xzb;
.super Ljava/lang/Object;
.source "Entity.java"


# static fields
.field private static hasCheckdb:Z
    .annotation runtime Lc8/eAb;
    .end annotation
.end field


# instance fields
.field public _id:J
    .annotation runtime Lc8/dAb;
        value = "_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Xzb;->hasCheckdb:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/Xzb;->_id:J

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/Wzb;->delete(Lc8/Xzb;)I

    .line 45
    return-void
.end method

.method public store()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/Wzb;->insert(Lc8/Xzb;)V

    .line 38
    return-void
.end method
