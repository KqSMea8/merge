.class public Lc8/BNf;
.super Ljava/lang/Object;
.source "TBImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CNf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TBImageUrlStrategyHolder"
.end annotation


# static fields
.field public static final instance:Lc8/CNf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lc8/CNf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/CNf;-><init>(Lc8/zNf;)V

    sput-object v0, Lc8/BNf;->instance:Lc8/CNf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
