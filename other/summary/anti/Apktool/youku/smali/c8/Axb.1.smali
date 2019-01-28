.class public Lc8/Axb;
.super Ljava/lang/Object;
.source "MtopHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Bxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtopServerParams"
.end annotation


# instance fields
.field public api:Ljava/lang/String;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ecode:Z

.field public isHttps:Z

.field public isSec:Z

.field public post:Z

.field public timer:I

.field public ttid:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Axb;->data:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lc8/yxb;)V
    .locals 0
    .param p1, "x0"    # Lc8/yxb;

    .prologue
    .line 126
    invoke-direct {p0}, Lc8/Axb;-><init>()V

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lc8/Axb;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lc8/Axb;->data:Ljava/util/Map;

    return-object v0
.end method
