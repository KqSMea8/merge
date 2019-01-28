.class public Lc8/wMp;
.super Ljava/lang/Object;
.source "RemoteConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xMp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteConfigInstanceHolder"
.end annotation


# static fields
.field private static instance:Lc8/xMp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lc8/xMp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/xMp;-><init>(Lc8/vMp;)V

    sput-object v0, Lc8/wMp;->instance:Lc8/xMp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/xMp;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lc8/wMp;->instance:Lc8/xMp;

    return-object v0
.end method
