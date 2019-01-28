.class public Lc8/zdn;
.super Ljava/lang/Object;
.source "DebugCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Adn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lc8/Adn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lc8/Adn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Adn;-><init>(Lc8/ydn;)V

    sput-object v0, Lc8/zdn;->INSTANCE:Lc8/Adn;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
