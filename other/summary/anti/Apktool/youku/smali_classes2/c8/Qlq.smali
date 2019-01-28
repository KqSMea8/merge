.class public final Lc8/Qlq;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Notification$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ON_COMPLETED:Lc8/Qlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Qlq",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final kind:Lrx/Notification$Kind;

.field private final throwable:Ljava/lang/Throwable;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, Lc8/Qlq;

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    invoke-direct {v0, v1, v2, v2}, Lc8/Qlq;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    sput-object v0, Lc8/Qlq;->ON_COMPLETED:Lc8/Qlq;

    return-void
.end method

.method private constructor <init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "kind"    # Lrx/Notification$Kind;
    .param p3, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification$Kind;",
            "TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lc8/Qlq;->value:Ljava/lang/Object;

    .line 79
    iput-object p3, p0, Lc8/Qlq;->throwable:Ljava/lang/Throwable;

    .line 80
    iput-object p1, p0, Lc8/Qlq;->kind:Lrx/Notification$Kind;

    .line 81
    return-void
.end method

.method public static createOnCompleted()Lc8/Qlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Qlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lc8/Qlq;->ON_COMPLETED:Lc8/Qlq;

    return-object v0
.end method

.method public static createOnCompleted(Ljava/lang/Class;)Lc8/Qlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lc8/Qlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lc8/Qlq;->ON_COMPLETED:Lc8/Qlq;

    return-object v0
.end method

.method public static createOnError(Ljava/lang/Throwable;)Lc8/Qlq;
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lc8/Qlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lc8/Qlq;

    sget-object v1, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lc8/Qlq;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static createOnNext(Ljava/lang/Object;)Lc8/Qlq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lc8/Qlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lc8/Qlq;

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lc8/Qlq;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lc8/Wlq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Wlq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    .local p1, "observer":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lc8/Qlq;->kind:Lrx/Notification$Kind;

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lc8/Qlq;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lc8/Qlq;->kind:Lrx/Notification$Kind;

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_1

    .line 164
    invoke-interface {p1}, Lc8/Wlq;->onCompleted()V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0}, Lc8/Qlq;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    if-nez p1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 209
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 210
    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 217
    check-cast v0, Lc8/Qlq;

    .line 218
    .local v0, "notification":Lc8/Qlq;, "Lrx/Notification<*>;"
    invoke-virtual {v0}, Lc8/Qlq;->getKind()Lrx/Notification$Kind;

    move-result-object v3

    invoke-virtual {p0}, Lc8/Qlq;->getKind()Lrx/Notification$Kind;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 222
    iget-object v3, p0, Lc8/Qlq;->value:Ljava/lang/Object;

    iget-object v4, v0, Lc8/Qlq;->value:Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lc8/Qlq;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Qlq;->value:Ljava/lang/Object;

    iget-object v4, v0, Lc8/Qlq;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    :cond_3
    iget-object v3, p0, Lc8/Qlq;->throwable:Ljava/lang/Throwable;

    iget-object v4, v0, Lc8/Qlq;->throwable:Ljava/lang/Throwable;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lc8/Qlq;->throwable:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Qlq;->throwable:Ljava/lang/Throwable;

    iget-object v4, v0, Lc8/Qlq;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getKind()Lrx/Notification$Kind;
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    iget-object v0, p0, Lc8/Qlq;->kind:Lrx/Notification$Kind;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    iget-object v0, p0, Lc8/Qlq;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    iget-object v0, p0, Lc8/Qlq;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasThrowable()Z
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lc8/Qlq;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Qlq;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lc8/Qlq;->isOnNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Qlq;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 193
    .local p0, "this":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lc8/Qlq;->getKind()Lrx/Notification$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Notification$Kind;->hashCode()I

    move-result v0

    .line 194
    .local v0, "hash":I
    invoke-virtual {p0}, Lc8/Qlq;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lc8/Qlq;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 197
    :cond_0
    invoke-virtual {p0}, Lc8/Qlq;->hasThrowable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lc8/Qlq;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 200
    :cond_1
    return v0
.end method

.method public isOnCompleted()Z
    .locals 2

    .prologue
    .line 144
    .local p0, "this":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lc8/Qlq;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnError()Z
    .locals 2

    .prologue
    .line 135
    .local p0, "this":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lc8/Qlq;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnNext()Z
    .locals 2

    .prologue
    .line 153
    .local p0, "this":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lc8/Qlq;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .local p0, "this":Lc8/Qlq;, "Lrx/Notification<TT;>;"
    const/16 v3, 0x20

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lc8/Qlq;->getKind()Lrx/Notification$Kind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lc8/Qlq;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lc8/Qlq;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    invoke-virtual {p0}, Lc8/Qlq;->hasThrowable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lc8/Qlq;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
