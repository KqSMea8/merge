.class public Lc8/sMp;
.super Ljava/lang/Object;
.source "LocalConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tMp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalConfigInstanceHolder"
.end annotation


# static fields
.field private static instance:Lc8/tMp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lc8/tMp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/tMp;-><init>(Lc8/rMp;)V

    sput-object v0, Lc8/sMp;->instance:Lc8/tMp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/tMp;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lc8/sMp;->instance:Lc8/tMp;

    return-object v0
.end method
