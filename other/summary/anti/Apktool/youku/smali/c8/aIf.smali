.class public Lc8/aIf;
.super Ljava/lang/Object;
.source "RealTimeUploaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/bIf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lc8/bIf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/bIf;-><init>(Lc8/ZHf;)V

    sput-object v0, Lc8/aIf;->INSTANCE:Lc8/bIf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/bIf;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lc8/aIf;->INSTANCE:Lc8/bIf;

    return-object v0
.end method
