.class public Lc8/UN;
.super Ljava/lang/Object;
.source "NetworkStatCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/VN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "holder"
.end annotation


# static fields
.field public static instance:Lc8/VN;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lc8/VN;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/VN;-><init>(Lanetwork/channel/stat/NetworkStatCache$1;)V

    sput-object v0, Lc8/UN;->instance:Lc8/VN;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
