.class public Lc8/Ay;
.super Ljava/lang/Object;
.source "Hack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HackedClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "this":Lc8/Ay;, "Landroid/taobao/atlas/hack/Hack$HackedClass<TC;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/Ay;->mClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public varargs constructor([Ljava/lang/Class;)Lc8/By;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/By;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lc8/Ay;, "Landroid/taobao/atlas/hack/Hack$HackedClass<TC;>;"
    .local p1, "arg_types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lc8/By;

    iget-object v1, p0, Lc8/Ay;->mClass:Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lc8/By;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-object v0
.end method

.method public field(Ljava/lang/String;)Lc8/Cy;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc8/Cy",
            "<TC;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lc8/Ay;, "Landroid/taobao/atlas/hack/Hack$HackedClass<TC;>;"
    new-instance v0, Lc8/Cy;

    iget-object v1, p0, Lc8/Ay;->mClass:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lc8/Cy;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getmClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lc8/Ay;, "Landroid/taobao/atlas/hack/Hack$HackedClass<TC;>;"
    iget-object v0, p0, Lc8/Ay;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/Dy;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lc8/Ay;, "Landroid/taobao/atlas/hack/Hack$HackedClass<TC;>;"
    .local p2, "arg_types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lc8/Dy;

    iget-object v1, p0, Lc8/Ay;->mClass:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lc8/Dy;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)V

    return-object v0
.end method

.method public staticField(Ljava/lang/String;)Lc8/Cy;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc8/Cy",
            "<TC;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lc8/Ay;, "Landroid/taobao/atlas/hack/Hack$HackedClass<TC;>;"
    new-instance v0, Lc8/Cy;

    iget-object v1, p0, Lc8/Ay;->mClass:Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-direct {v0, v1, p1, v2}, Lc8/Cy;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-object v0
.end method

.method public varargs staticMethod(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/Dy;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "this":Lc8/Ay;, "Landroid/taobao/atlas/hack/Hack$HackedClass<TC;>;"
    .local p2, "arg_types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lc8/Dy;

    iget-object v1, p0, Lc8/Ay;->mClass:Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-direct {v0, v1, p1, p2, v2}, Lc8/Dy;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)V

    return-object v0
.end method
