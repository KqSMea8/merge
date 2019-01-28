.class public Lc8/wSb;
.super Ljava/lang/Object;
.source "AdapterLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xSb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final instance:Lc8/xSb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lc8/xSb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/xSb;-><init>(Lc8/vSb;)V

    sput-object v0, Lc8/wSb;->instance:Lc8/xSb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/xSb;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lc8/wSb;->instance:Lc8/xSb;

    return-object v0
.end method
