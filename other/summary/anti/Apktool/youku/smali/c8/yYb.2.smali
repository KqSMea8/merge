.class public Lc8/yYb;
.super Ljava/lang/Object;
.source "PageTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Lc8/zYb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lc8/zYb;

    invoke-direct {v0}, Lc8/zYb;-><init>()V

    sput-object v0, Lc8/yYb;->instance:Lc8/zYb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lc8/zYb;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lc8/yYb;->instance:Lc8/zYb;

    return-object v0
.end method
