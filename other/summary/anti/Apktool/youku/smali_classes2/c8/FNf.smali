.class public Lc8/FNf;
.super Ljava/lang/Object;
.source "TaobaoImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/HNf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TImageUrlStrategyHolder"
.end annotation


# static fields
.field public static final instance:Lc8/HNf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1085
    new-instance v0, Lc8/HNf;

    invoke-direct {v0}, Lc8/HNf;-><init>()V

    sput-object v0, Lc8/FNf;->instance:Lc8/HNf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
