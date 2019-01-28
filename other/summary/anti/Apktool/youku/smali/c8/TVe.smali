.class public Lc8/TVe;
.super Lc8/yVe;
.source "RSContent.java"


# annotations
.annotation runtime Lc8/DVe;
    value = "rs"
.end annotation


# instance fields
.field private content:Ljava/lang/String;
    .annotation runtime Lc8/BVe;
        value = "content"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lc8/yVe;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/TVe;->content:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Lc8/yVe;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/TVe;->content:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1}, Lc8/TVe;->setContent(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lc8/TVe;->content:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/TVe;->content:Ljava/lang/String;

    .line 32
    return-void
.end method
