.class public Lc8/NHf;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OHf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/OHf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lc8/OHf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/OHf;-><init>(Lc8/JHf;)V

    sput-object v0, Lc8/NHf;->INSTANCE:Lc8/OHf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/OHf;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lc8/NHf;->INSTANCE:Lc8/OHf;

    return-object v0
.end method
