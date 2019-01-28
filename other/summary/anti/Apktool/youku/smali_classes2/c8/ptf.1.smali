.class public Lc8/ptf;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qtf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NamespaceKey"
.end annotation


# instance fields
.field namespaces:[Ljava/lang/String;

.field final synthetic this$0:Lc8/qtf;


# direct methods
.method constructor <init>(Lc8/qtf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qtf;

    .prologue
    .line 433
    iput-object p1, p0, Lc8/ptf;->this$0:Lc8/qtf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 438
    if-ne p0, p1, :cond_0

    move v3, v4

    .line 457
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v3

    .line 441
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v3, v6, :cond_2

    :cond_1
    move v3, v5

    .line 442
    goto :goto_0

    .line 445
    :cond_2
    iget-object v3, p0, Lc8/ptf;->namespaces:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 446
    .local v1, "curNamespaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast p1, Lc8/ptf;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v3, p1, Lc8/ptf;->namespaces:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 448
    .local v0, "anoNamespaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eq v3, v6, :cond_3

    move v3, v5

    .line 449
    goto :goto_0

    .line 451
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 452
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 453
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 454
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    .line 455
    goto :goto_0

    .line 453
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v3, v4

    .line 457
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc8/ptf;->namespaces:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
