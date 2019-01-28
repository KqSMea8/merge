.class public Lc8/jZb;
.super Ljava/lang/Object;
.source "PopLayerConsole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/poplayerconsole/PopLayerConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private showDomain:I

.field private showTag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const-string/jumbo v0, "All"

    iput-object v0, p0, Lc8/jZb;->showTag:Ljava/lang/String;

    .line 509
    const/4 v0, 0x2

    iput v0, p0, Lc8/jZb;->showDomain:I

    return-void
.end method

.method public synthetic constructor <init>(Lc8/aZb;)V
    .locals 0
    .param p1, "x0"    # Lc8/aZb;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 507
    invoke-direct {p0}, Lc8/jZb;-><init>()V

    return-void
.end method

.method public static synthetic access$600(Lc8/jZb;)I
    .locals 1
    .param p0, "x0"    # Lc8/jZb;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 507
    iget v0, p0, Lc8/jZb;->showDomain:I

    return v0
.end method

.method static synthetic access$602(Lc8/jZb;I)I
    .locals 0
    .param p0, "x0"    # Lc8/jZb;
    .param p1, "x1"    # I

    .prologue
    .line 507
    iput p1, p0, Lc8/jZb;->showDomain:I

    return p1
.end method

.method public static synthetic access$700(Lc8/jZb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/jZb;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lc8/jZb;->showTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lc8/jZb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/jZb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 507
    iput-object p1, p0, Lc8/jZb;->showTag:Ljava/lang/String;

    return-object p1
.end method
