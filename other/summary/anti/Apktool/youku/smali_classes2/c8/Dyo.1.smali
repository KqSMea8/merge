.class public Lc8/Dyo;
.super Ljava/lang/Object;
.source "AppVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Eyo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppInitInfo"
.end annotation


# instance fields
.field public status:Ljava/lang/String;

.field final synthetic this$0:Lc8/Eyo;

.field public up_desc:Ljava/lang/String;

.field public up_download:Ljava/lang/String;

.field public up_type:I

.field public up_version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/Eyo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Eyo;

    .prologue
    .line 166
    iput-object p1, p0, Lc8/Dyo;->this$0:Lc8/Eyo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNeedUpdate()Z
    .locals 3

    .prologue
    .line 174
    const-string/jumbo v0, "success"

    iget-object v1, p0, Lc8/Dyo;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lc8/Dyo;->this$0:Lc8/Eyo;

    iget-object v1, p0, Lc8/Dyo;->up_version:Ljava/lang/String;

    sget-object v2, Lc8/VLj;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/Eyo;->compareDifferentVersionCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
