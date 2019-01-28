.class public Lc8/TYb;
.super Ljava/lang/Object;
.source "ViewTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Lc8/UYb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lc8/UYb;

    invoke-direct {v0}, Lc8/UYb;-><init>()V

    sput-object v0, Lc8/TYb;->instance:Lc8/UYb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lc8/UYb;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lc8/TYb;->instance:Lc8/UYb;

    return-object v0
.end method
