.class public Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
.super Ljava/lang/Throwable;
.source "Hack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HackAssertionException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mHackedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mHackedFieldName:Ljava/lang/String;

.field private mHackedMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 261
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHackedClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->mHackedClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getHackedFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->mHackedFieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getHackedMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->mHackedMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public setHackedClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "mHackedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->mHackedClass:Ljava/lang/Class;

    .line 272
    return-void
.end method

.method public setHackedFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->mHackedFieldName:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setHackedMethodName(Ljava/lang/String;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->mHackedMethodName:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
