.class public Lc8/yVe;
.super Ljava/lang/Object;
.source "Entity.java"


# static fields
.field private static hasCheckdb:Z
    .annotation runtime Lc8/CVe;
    .end annotation
.end field


# instance fields
.field public _id:J
    .annotation runtime Lc8/BVe;
        value = "_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lc8/yVe;->hasCheckdb:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/yVe;->_id:J

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/oVe;->getDbMgr()Lc8/xVe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/xVe;->delete(Lc8/yVe;)I

    .line 43
    return-void
.end method

.method public store()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/oVe;->getDbMgr()Lc8/xVe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/xVe;->insert(Lc8/yVe;)V

    .line 36
    return-void
.end method
