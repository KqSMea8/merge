.class public Lc8/zef;
.super Ljava/lang/Object;
.source "TemplateRequest.java"


# instance fields
.field public defaultTemplateAssetName:Ljava/lang/String;

.field public defaultTemplateId:Ljava/lang/String;

.field public templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "defaultTemplateId"    # Ljava/lang/String;
    .param p3, "defaultTemplateAssetsName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "templateId is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    if-nez p2, :cond_1

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "defaultTemplateId is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "defaultTemplateAssetsName is null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_2
    iput-object p1, p0, Lc8/zef;->templateId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lc8/zef;->defaultTemplateId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lc8/zef;->defaultTemplateAssetName:Ljava/lang/String;

    .line 31
    return-void
.end method
