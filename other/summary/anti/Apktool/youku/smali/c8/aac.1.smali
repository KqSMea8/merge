.class public abstract Lc8/aac;
.super Ljava/lang/Object;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/aac;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lc8/aac;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/aac;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract execute(Ljava/lang/Object;Lc8/bac;)V
.end method

.method public getBizId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/aac;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getHintList()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc8/aac;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lc8/aac;->c:I

    return v0
.end method

.method public abstract getWantName()Ljava/lang/String;
.end method
