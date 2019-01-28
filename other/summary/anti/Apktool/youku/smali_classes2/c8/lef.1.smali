.class public final Lc8/lef;
.super Ljava/lang/Object;
.source "LayoutFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutFileRequest"
.end annotation


# instance fields
.field public layoutKey:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 158
    if-ne p0, p1, :cond_0

    .line 159
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    .line 162
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 163
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 166
    check-cast v0, Lc8/lef;

    .line 168
    .local v0, "request":Lc8/lef;
    iget-object v1, p0, Lc8/lef;->layoutKey:Ljava/lang/String;

    iget-object v2, v0, Lc8/lef;->layoutKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lc8/lef;->layoutKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 174
    const/4 v0, -0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/lef;->layoutKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
