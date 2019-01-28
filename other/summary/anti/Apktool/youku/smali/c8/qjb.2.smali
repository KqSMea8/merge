.class public Lc8/qjb;
.super Ljava/lang/Object;
.source "WebViewActivitySupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rjb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final SINGLETON_INSTANCE:Lc8/rjb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lc8/rjb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/rjb;-><init>(Lc8/pjb;)V

    sput-object v0, Lc8/qjb;->SINGLETON_INSTANCE:Lc8/rjb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/rjb;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lc8/qjb;->SINGLETON_INSTANCE:Lc8/rjb;

    return-object v0
.end method
