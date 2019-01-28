.class public Lc8/Xlf;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ylf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static a:Lc8/Ylf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lc8/Ylf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Ylf;-><init>(Lc8/Wlf;)V

    sput-object v0, Lc8/Xlf;->a:Lc8/Ylf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lc8/Ylf;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lc8/Xlf;->a:Lc8/Ylf;

    return-object v0
.end method
