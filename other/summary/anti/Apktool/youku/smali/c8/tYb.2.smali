.class public Lc8/tYb;
.super Ljava/lang/Object;
.source "AppTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Lc8/uYb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lc8/uYb;

    invoke-direct {v0}, Lc8/uYb;-><init>()V

    sput-object v0, Lc8/tYb;->instance:Lc8/uYb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lc8/uYb;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lc8/tYb;->instance:Lc8/uYb;

    return-object v0
.end method
