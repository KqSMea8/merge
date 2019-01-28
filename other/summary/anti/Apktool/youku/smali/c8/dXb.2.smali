.class public Lc8/dXb;
.super Ljava/lang/Object;
.source "LayerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eXb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Lc8/eXb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lc8/eXb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/eXb;-><init>(Lc8/cXb;)V

    sput-object v0, Lc8/dXb;->instance:Lc8/eXb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/eXb;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lc8/dXb;->instance:Lc8/eXb;

    return-object v0
.end method
