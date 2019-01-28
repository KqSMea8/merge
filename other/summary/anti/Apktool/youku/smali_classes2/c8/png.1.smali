.class public Lc8/png;
.super Ljava/lang/Object;
.source "AntImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/qng;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lc8/qng;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/qng;-><init>(Lc8/nng;)V

    sput-object v0, Lc8/png;->INSTANCE:Lc8/qng;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/qng;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lc8/png;->INSTANCE:Lc8/qng;

    return-object v0
.end method
