.class public abstract Lc8/Zdf;
.super Ljava/lang/Object;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Wdf;,
        Lc8/Ydf;,
        Lc8/Xdf;
    }
.end annotation


# static fields
.field public static final ID_PROJECTION:[Ljava/lang/String;


# instance fields
.field public id:J
    .annotation runtime Lc8/Wdf;
        value = "_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lc8/Zdf;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Zdf;->id:J

    .line 25
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Zdf;->id:J

    .line 39
    return-void
.end method
