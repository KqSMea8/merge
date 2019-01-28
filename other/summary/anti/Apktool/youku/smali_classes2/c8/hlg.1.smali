.class public Lc8/hlg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lc8/Dmg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnTimeListener"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lc8/Dmg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Dmg;)V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/hlg;->c:Ljava/lang/ref/WeakReference;

    .line 141
    iput-object p2, p0, Lc8/hlg;->d:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lc8/hlg;->a:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lc8/hlg;->b:Ljava/lang/String;

    .line 144
    iput-object p5, p0, Lc8/hlg;->e:Lc8/Dmg;

    .line 145
    return-void
.end method

.method static synthetic a(Lc8/hlg;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lc8/hlg;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 149
    :try_start_0
    invoke-static {p1}, Lc8/umg;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Lc8/hlg;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 153
    new-instance v0, Lc8/Fmg;

    const/4 v1, -0x4

    const-string/jumbo v2, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v0, v1, v2, p1}, Lc8/Fmg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/hlg;->onError(Lc8/Fmg;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lc8/hlg;->e:Lc8/Dmg;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lc8/hlg;->e:Lc8/Dmg;

    invoke-interface {v0}, Lc8/Dmg;->onCancel()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/hlg;->e:Lc8/Dmg;

    .line 185
    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 159
    check-cast p1, Lorg/json/JSONObject;

    .line 160
    invoke-static {}, Lc8/Mlg;->a()Lc8/Mlg;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/hlg;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_H5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string/jumbo v6, "ret"

    const/4 v7, -0x6

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v9, p0, Lc8/hlg;->a:Ljava/lang/String;

    const/4 v10, 0x0

    move-wide v6, v4

    invoke-virtual/range {v0 .. v10}, Lc8/Mlg;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    .line 162
    iget-object v0, p0, Lc8/hlg;->e:Lc8/Dmg;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lc8/hlg;->e:Lc8/Dmg;

    invoke-interface {v0, p1}, Lc8/Dmg;->onComplete(Ljava/lang/Object;)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/hlg;->e:Lc8/Dmg;

    .line 166
    :cond_0
    return-void
.end method

.method public onError(Lc8/Fmg;)V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 170
    iget-object v0, p1, Lc8/Fmg;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lc8/Fmg;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/hlg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 171
    :goto_0
    invoke-static {}, Lc8/Mlg;->a()Lc8/Mlg;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/hlg;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_H5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v8, p1, Lc8/Fmg;->errorCode:I

    const/4 v10, 0x0

    move-wide v6, v4

    invoke-virtual/range {v0 .. v10}, Lc8/Mlg;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    .line 173
    iget-object v0, p0, Lc8/hlg;->e:Lc8/Dmg;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lc8/hlg;->e:Lc8/Dmg;

    invoke-interface {v0, p1}, Lc8/Dmg;->onError(Lc8/Fmg;)V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/hlg;->e:Lc8/Dmg;

    .line 177
    :cond_0
    return-void

    .line 170
    :cond_1
    iget-object v9, p0, Lc8/hlg;->a:Ljava/lang/String;

    goto :goto_0
.end method
