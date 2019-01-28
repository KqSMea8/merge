.class public Lc8/qsf;
.super Ljava/lang/Object;
.source "ProblemCheck.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rsf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySharedPreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/rsf;


# direct methods
.method constructor <init>(Lc8/rsf;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lc8/qsf;->this$0:Lc8/rsf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 153
    :try_start_0
    iget-object v6, p0, Lc8/qsf;->this$0:Lc8/rsf;

    iget-object v6, v6, Lc8/rsf;->mFileSpFile:Ljava/lang/reflect/Field;

    if-nez v6, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "mFile"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 155
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    iget-object v6, p0, Lc8/qsf;->this$0:Lc8/rsf;

    iput-object v2, v6, Lc8/rsf;->mFileSpFile:Ljava/lang/reflect/Field;

    .line 158
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    iget-object v6, p0, Lc8/qsf;->this$0:Lc8/rsf;

    iget-object v6, v6, Lc8/rsf;->mFileSpFile:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 159
    .local v3, "file":Ljava/io/File;
    if-nez v3, :cond_2

    .line 178
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 162
    .restart local v3    # "file":Ljava/io/File;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " \uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "fileKey":Ljava/lang/String;
    iget-object v6, p0, Lc8/qsf;->this$0:Lc8/rsf;

    iget-object v6, v6, Lc8/rsf;->mSharedpreferenceKeyFreq:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 165
    iget-object v6, p0, Lc8/qsf;->this$0:Lc8/rsf;

    iget-object v6, v6, Lc8/rsf;->mSharedpreferenceKeyFreq:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 166
    .local v5, "integer":Ljava/lang/Integer;
    if-eqz v5, :cond_3

    .line 167
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 168
    .local v0, "count":I
    iget-object v6, p0, Lc8/qsf;->this$0:Lc8/rsf;

    iget-object v6, v6, Lc8/rsf;->mSharedpreferenceKeyFreq:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v0    # "count":I
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileKey":Ljava/lang/String;
    .end local v5    # "integer":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileKey":Ljava/lang/String;
    .restart local v5    # "integer":Ljava/lang/Integer;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lc8/qsf;->this$0:Lc8/rsf;

    iget-object v6, v6, Lc8/rsf;->mSharedpreferenceKeyFreq:Ljava/util/Map;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
