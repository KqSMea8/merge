.class public Lc8/Mkf;
.super Ljava/lang/Object;
.source "DataBoardManager.java"


# static fields
.field private static instance:Lc8/Mkf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lc8/Mkf;

    invoke-direct {v0}, Lc8/Mkf;-><init>()V

    sput-object v0, Lc8/Mkf;->instance:Lc8/Mkf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/Mkf;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    sget-object v0, Lc8/Mkf;->instance:Lc8/Mkf;

    return-object v0
.end method


# virtual methods
.method public addExclusionActivity(Ljava/lang/Class;)Lc8/Mkf;
    .locals 0
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 30
    return-object p0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public setCloseCallback(Lc8/Nkf;)V
    .locals 0
    .param p1, "callback"    # Lc8/Nkf;

    .prologue
    .line 17
    return-void
.end method

.method public setPlatformMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "mPlatformMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
