.class public Lc8/QNf;
.super Lc8/SNf;
.source "DefaultFormatLog.java"


# instance fields
.field private mMinLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lc8/SNf;-><init>()V

    .line 6
    const/4 v0, 0x5

    iput v0, p0, Lc8/QNf;->mMinLevel:I

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p2, p3}, Lc8/QNf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p2, p3}, Lc8/QNf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 30
    invoke-virtual {p0, p2, p3}, Lc8/QNf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    return-void
.end method

.method public isLoggable(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 10
    iget v0, p0, Lc8/QNf;->mMinLevel:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMinLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 15
    iput p1, p0, Lc8/QNf;->mMinLevel:I

    .line 16
    return-void
.end method

.method public varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 20
    invoke-virtual {p0, p2, p3}, Lc8/QNf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    return-void
.end method

.method public varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 35
    invoke-virtual {p0, p2, p3}, Lc8/QNf;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    return-void
.end method
