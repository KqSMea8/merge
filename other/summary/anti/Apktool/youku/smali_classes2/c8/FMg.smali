.class public Lc8/FMg;
.super Ljava/lang/Object;
.source "ClickManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/GMg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/GMg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lc8/GMg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/GMg;-><init>(Lc8/EMg;)V

    sput-object v0, Lc8/FMg;->INSTANCE:Lc8/GMg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/GMg;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lc8/FMg;->INSTANCE:Lc8/GMg;

    return-object v0
.end method
